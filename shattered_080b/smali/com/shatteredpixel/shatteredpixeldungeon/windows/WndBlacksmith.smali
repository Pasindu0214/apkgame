.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndBlacksmith.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;
    }
.end annotation


# instance fields
.field public btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

.field public btnItem2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

.field public btnPressed:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

.field public btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

.field public itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;)V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->icon(Lcom/watabou/noosa/Image;)V

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/high16 p1, 0x42e80000    # 116.0f

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2, v2, p1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "prompt"

    .line 9
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    .line 10
    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v4

    const/16 v5, 0x74

    .line 11
    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 12
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v1, v6

    invoke-virtual {v4, v2, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$1;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    const/high16 v6, 0x41880000    # 17.0f

    .line 15
    iget v7, v4, Lcom/watabou/noosa/ui/Component;->y:F

    .line 16
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v7, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v7, v4

    const/high16 v8, 0x42100000    # 36.0f

    .line 17
    invoke-virtual {v1, v6, v7, v8, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 18
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$2;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 20
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 21
    iget v7, v7, Lcom/watabou/noosa/ui/Component;->y:F

    .line 22
    invoke-virtual {v1, v6, v7, v8, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 23
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 24
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$3;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "reforge"

    .line 25
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 27
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 28
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v4

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 29
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
