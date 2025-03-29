.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;
.super Lcom/watabou/noosa/ui/Button;
.source "StatusPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuButton"
.end annotation


# instance fields
.field public image:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;->image:Lcom/watabou/noosa/Image;

    iget v1, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 3
    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v6, Lcom/watabou/noosa/Image;

    const-string v1, "menu_button.png"

    const/16 v2, 0x11

    const/4 v3, 0x2

    const/16 v4, 0xc

    const/16 v5, 0xb

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;->image:Lcom/watabou/noosa/Image;

    .line 3
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;->image:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;-><init>()V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method

.method public onPointerDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;->image:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_click.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$MenuButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    return-void
.end method
