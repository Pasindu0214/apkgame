.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;
.super Lcom/watabou/noosa/ui/Button;
.source "BadgesScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadgeButton"
.end annotation


# instance fields
.field public badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

.field public icon:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v0, :cond_1

    .line 4
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->image(I)Lcom/watabou/noosa/Image;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/watabou/noosa/Image;

    .line 5
    invoke-direct {p1}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "locked_badge.png"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 7
    :goto_1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->icon:Lcom/watabou/noosa/Image;

    .line 8
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->width()F

    move-result p1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public onClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f333333    # 0.7f

    const-string v2, "snd_click.mp3"

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBadge;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBadge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public update()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    float-to-double v0, v0

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->icon:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/BadgesScene$BadgeButton;->badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->highlight(Lcom/watabou/noosa/Image;I)V

    :cond_0
    return-void
.end method
