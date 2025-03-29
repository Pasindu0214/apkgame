.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;
.super Lcom/watabou/noosa/ui/Button;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeroBtn"
.end annotation


# instance fields
.field public cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public hero:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 3
    new-instance v6, Lcom/watabou/noosa/Image;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->spritesheet()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x5a

    const/16 v4, 0xc

    const/16 v5, 0xf

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 5
    :cond_0
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "huntress_unlock"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "rogue_unlock"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_2
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "mage_unlock"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    :goto_1
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroBtn;->hero:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    :goto_0
    return-void
.end method
