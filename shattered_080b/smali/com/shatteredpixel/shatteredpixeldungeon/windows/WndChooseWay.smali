.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndChooseWay.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 4
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

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
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 9
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 v2, 0x42f00000    # 120.0f

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v4, 0x6

    .line 12
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->desc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->desc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "message"

    .line 14
    invoke-static {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x78

    invoke-virtual {v4, v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    .line 16
    iget v5, v1, Lcom/watabou/noosa/ui/Component;->x:F

    .line 17
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v1, v8

    invoke-virtual {v4, v5, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 18
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    .line 20
    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p2

    add-float/2addr p2, v8

    const/high16 v4, 0x426c0000    # 59.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v3, p2, v4, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$2;

    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, p0, v4, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    .line 23
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result p1

    add-float/2addr p1, v8

    .line 24
    iget p3, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 25
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 26
    invoke-virtual {p2, p1, p3, v1, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 27
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 28
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$3;

    new-array p3, v6, [Ljava/lang/Object;

    const-string v1, "cancel"

    .line 29
    invoke-static {v0, v1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-direct {p1, p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p2

    add-float/2addr p2, v8

    invoke-virtual {p1, v3, p2, v2, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 32
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v7, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
