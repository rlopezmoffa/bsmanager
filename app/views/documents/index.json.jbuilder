# json.array! @documents, partial: "documents/document", as: :document


json.array! @documents do |document|
  json.id document.id
  json.title document.title

  json.paragraphs do
   json.array! document.paragraphs, :id, :title, :text
 end
end
