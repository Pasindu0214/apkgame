.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "DocumentPage.java"


# instance fields
.field public page:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MASTERY:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public final doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pickUpJournal(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pane:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->btnJournal:Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;

    .line 4
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->flashing:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->document()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    move-result-object v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    if-ne v0, v2, :cond_1

    .line 6
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->last_index:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->last_index:I

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->document()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    move-result-object v0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->addPage(Ljava/lang/String;)Z

    .line 9
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_item.mp3"

    .line 10
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 11
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return v1
.end method

.method public abstract document()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "page"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    const-string v1, "page"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
