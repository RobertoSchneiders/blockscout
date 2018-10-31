defmodule Explorer.Repo.Migrations.AddIndexesToTokenTransfers do
  use Ecto.Migration

  def change do
    create(
      index("token_transfers", [
        :to_address_hash,
        :from_address_hash
      ])
    )
  end
end
