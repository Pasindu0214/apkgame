.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndResurrect.java"


# static fields
.field public static causeOfDeath:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;Ljava/lang/Object;)V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;->causeOfDeath:Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 5
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v3, 0x0

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 7
    iget-object v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p2, v2}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iput-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {p2, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 p1, 0x42f00000    # 120.0f

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v1, v1, p1, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "message"

    .line 14
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 15
    invoke-static {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v3

    const/16 v4, 0x78

    .line 16
    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 17
    invoke-virtual {p2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p2

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr p2, v5

    invoke-virtual {v3, v1, p2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 18
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$1;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "yes"

    .line 20
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-direct {p2, p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;Ljava/lang/String;)V

    .line 22
    iget v6, v3, Lcom/watabou/noosa/ui/Component;->y:F

    .line 23
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v6, v3

    add-float/2addr v6, v5

    const/high16 v3, 0x41a00000    # 20.0f

    .line 24
    invoke-virtual {p2, v1, v6, p1, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 25
    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 26
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$2;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "no"

    .line 27
    invoke-static {v0, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {v6, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p2

    add-float/2addr p2, v5

    invoke-virtual {v6, v1, p2, p1, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 30
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 31
    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->destroy()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
