.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination$WndDivination;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "ScrollOfDivination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WndDivination"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-direct {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "name"

    .line 3
    invoke-static {p1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;)V

    const/high16 p1, 0x42f00000    # 120.0f

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, p1, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfDivination$WndDivination;

    const-string v4, "desc"

    invoke-static {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    .line 7
    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    const/16 v3, 0x78

    .line 8
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 9
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 10
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v0, v2

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 13
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 14
    invoke-virtual {v5, v1, v0, p1, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 15
    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    invoke-virtual {v5}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v4

    goto :goto_0

    :cond_0
    float-to-int p1, v0

    .line 17
    invoke-virtual {p0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
