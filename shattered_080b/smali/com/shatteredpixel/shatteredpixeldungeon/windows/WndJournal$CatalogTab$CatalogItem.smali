.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatalogItem"
.end annotation


# instance fields
.field public item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public seen:Z


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;ZZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 2
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;I)V

    .line 5
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    iput-boolean p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->seen:Z

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    .line 7
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 9
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isKnown()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RING_HOLDER:I

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->anonymous:Z

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymize()V

    goto :goto_0

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v0, :cond_3

    .line 14
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymize()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    if-nez p3, :cond_4

    .line 15
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    new-instance p3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    .line 16
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->spriteIndexes:[I

    .line 17
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->currentItemIdx:I

    .line 18
    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-direct {p3, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {p2, p3}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const-string p2, "???"

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const p2, 0x999999

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 21
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    new-instance p3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    .line 22
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->spriteIndexes:[I

    .line 23
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->currentItemIdx:I

    .line 24
    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-direct {p3, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {p2, p3}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 25
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const p2, 0xcccccc

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    :cond_5
    :goto_1
    return-void
.end method
