.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;
.source "GuidePage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GUIDE_PAGE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pageTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;

    const-string v2, "desc"

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public document()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    return-object v0
.end method
