require "spec_helper"

describe CollectionItem, :ready do
  it "can be created" do
    expect(create(:collection_item)).to be_valid
  end

  context "belonging to a bookmark" do
    it "can be revealed without erroring" do
      ci = CollectionItem.create(
        item_id: 1,
        item_type: "Bookmark",
        collection_id: create(:collection).id,
        unrevealed: true
      )
      ci.unrevealed = false
      expect(ci.save).to be_truthy
    end
  end

  describe "#save" do
    let(:collection) { create(:collection) }
    let(:work) { create(:work) }

    context "as an archivist" do
      let(:archivist) { create(:archivist) }

      before do
        User.current_user = archivist
      end

      context "when the archivist maintains the collection" do
        let(:collection) { create(:collection, owner: archivist.default_pseud) }

        it "automatically approves the item" do
          item = create(:collection_item, item: work, collection: collection)
          expect(item.approved?).to be true
        end

        it "sends an archivist added email" do
          message_double = instance_double(ActionMailer::MessageDelivery, deliver_later: true)
          expect(UserMailer).to receive(:archivist_added_to_collection_notification)
            .and_return(message_double)
          create(:collection_item, item: work, collection: collection)
        end

        context "when the item's creator has collection emails turned off" do
          before do
            work.users.first.preference.update!(collection_emails_off: true)
          end

          it "does not send an archivist added email" do
            expect(UserMailer).not_to receive(:archivist_added_to_collection_notification)
            create(:collection_item, item: work, collection: collection)
          end
        end
      end

      context "when the archivist does not maintain the collection" do
        it "does not automatically approve the item" do
          item = create(:collection_item, item: work, collection: collection)
          expect(item.approved?).to be false
        end

        it "does not send an archivist added email" do
          expect(UserMailer).not_to receive(:archivist_added_to_collection_notification)
          create(:collection_item, item: work, collection: collection)
        end
      end
    end

    context "with no current user" do
      it "does not send an archivist added email" do
        expect(UserMailer).not_to receive(:archivist_added_to_collection_notification)
        create(:collection_item, item: work, collection: collection)
      end
    end
  end

  describe "include_for_works scope" do
    let(:collection) { create(:collection) }
    let(:work) { create(:work, id: 63) }
    let(:bookmark) { create(:bookmark, id: 63) }

    before { bookmark.collections << collection }

    it "returns the correct type item for bookmarks" do
      expect(work.id).to eq(bookmark.id)
      expect(collection.collection_items).not_to be_empty
      expect(collection.collection_items.first.item_type).to eq("Bookmark")
      expect(collection.collection_items.include_for_works.first.item_type).to eq("Bookmark")
    end
  end
end
