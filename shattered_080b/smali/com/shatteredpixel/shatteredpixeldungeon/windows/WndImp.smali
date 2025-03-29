.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndImp.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 4
    iget v3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v4, 0x0

    .line 5
    invoke-direct {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 6
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 v2, 0x42f00000    # 120.0f

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 12
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "message"

    .line 13
    invoke-static {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 14
    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v5

    const/16 v6, 0x78

    .line 15
    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 16
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v1, v7

    invoke-virtual {v5, v3, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 17
    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "reward"

    .line 19
    invoke-static {v0, v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;)V

    .line 21
    iget p1, v5, Lcom/watabou/noosa/ui/Component;->y:F

    .line 22
    iget p2, v5, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr p1, p2

    add-float/2addr p1, v7

    const/high16 p2, 0x41a00000    # 20.0f

    .line 23
    invoke-virtual {v1, v3, p1, v2, p2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 24
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 25
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v6, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
