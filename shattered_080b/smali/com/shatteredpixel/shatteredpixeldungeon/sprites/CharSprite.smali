.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
.super Lcom/watabou/noosa/MovieClip;
.source "CharSprite.java"

# interfaces
.implements Lcom/watabou/noosa/tweeners/Tweener$Listener;
.implements Lcom/watabou/noosa/MovieClip$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;,
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;
    }
.end annotation


# static fields
.field public static moveInterval:F = 0.1f


# instance fields
.field public animCallback:Lcom/watabou/utils/Callback;

.field public attack:Lcom/watabou/noosa/MovieClip$Animation;

.field public burning:Lcom/watabou/noosa/particles/Emitter;

.field public ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public chilled:Lcom/watabou/noosa/particles/Emitter;

.field public darkBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;

.field public die:Lcom/watabou/noosa/MovieClip$Animation;

.field public emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

.field public flashTime:F

.field public healing:Lcom/watabou/noosa/particles/Emitter;

.field public health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

.field public iceBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

.field public idle:Lcom/watabou/noosa/MovieClip$Animation;

.field public invisible:Lcom/watabou/noosa/tweeners/AlphaTweener;

.field public volatile isMoving:Z

.field public jumpCallback:Lcom/watabou/utils/Callback;

.field public jumpTweener:Lcom/watabou/noosa/tweeners/Tweener;

.field public levitation:Lcom/watabou/noosa/particles/Emitter;

.field public light:Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;

.field public marked:Lcom/watabou/noosa/particles/Emitter;

.field public motion:Lcom/watabou/noosa/tweeners/PosTweener;

.field public operate:Lcom/watabou/noosa/MovieClip$Animation;

.field public perspectiveRaise:F

.field public renderShadow:Z

.field public run:Lcom/watabou/noosa/MovieClip$Animation;

.field public shadowHeight:F

.field public shadowMatrix:[F

.field public shadowOffset:F

.field public shadowWidth:F

.field public shield:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;

.field public sleeping:Z

.field public zap:Lcom/watabou/noosa/MovieClip$Animation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/MovieClip;-><init>()V

    const/high16 v0, 0x3ec00000    # 0.375f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->renderShadow:Z

    const v1, 0x3f99999a    # 1.2f

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowWidth:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowHeight:F

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowOffset:F

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flashTime:F

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->sleeping:Z

    .line 9
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->isMoving:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowMatrix:[F

    .line 11
    iput-object p0, p0, Lcom/watabou/noosa/MovieClip;->listener:Lcom/watabou/noosa/MovieClip$Listener;

    return-void
.end method


# virtual methods
.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->effects:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->healing:Lcom/watabou/noosa/particles/Emitter;

    .line 5
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->marked:Lcom/watabou/noosa/particles/Emitter;

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 9
    invoke-virtual {p1, v1, v0, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    .line 11
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->darkBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->chilled:Lcom/watabou/noosa/particles/Emitter;

    .line 15
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 16
    invoke-virtual {p1, v1, v0, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->light:Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->effects:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 19
    :pswitch_6
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    .line 20
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->iceBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

    .line 23
    iput-boolean v1, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    goto :goto_0

    .line 24
    :pswitch_7
    iput-boolean v1, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    goto :goto_0

    .line 25
    :pswitch_8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->invisible:Lcom/watabou/noosa/tweeners/AlphaTweener;

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 27
    :cond_2
    new-instance p1, Lcom/watabou/noosa/tweeners/AlphaTweener;

    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p1, p0, v0, v0}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->invisible:Lcom/watabou/noosa/tweeners/AlphaTweener;

    .line 28
    iget-object v1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v1, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 31
    :pswitch_9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->levitation:Lcom/watabou/noosa/particles/Emitter;

    const/16 v0, 0x6a

    .line 32
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3ca3d70a    # 0.02f

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 34
    :pswitch_a
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burning:Lcom/watabou/noosa/particles/Emitter;

    .line 35
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3d75c28f    # 0.06f

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 37
    iget-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p1, :cond_4

    .line 38
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_burning.mp3"

    .line 39
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public attack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public attack(ILcom/watabou/utils/Callback;)V
    .locals 0

    .line 3
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->animCallback:Lcom/watabou/utils/Callback;

    .line 4
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public blood()I
    .locals 1

    const/high16 v0, -0x450000

    return v0
.end method

.method public bloodBurstA(Lcom/watabou/utils/PointF;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    int-to-double v1, p2

    .line 3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-double v3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    mul-double v1, v1, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p2, v1

    .line 4
    iget v1, v0, Lcom/watabou/utils/PointF;->y:F

    iget v2, p1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, v0, Lcom/watabou/utils/PointF;->x:F

    iget p1, p1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float p1, v1

    const v1, 0x3fc90fda

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->blood()I

    move-result v2

    invoke-static {v0, p1, v1, v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;FFII)V

    :cond_0
    return-void
.end method

.method public burst(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    :cond_0
    return-void
.end method

.method public centerEmitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 2

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(Lcom/watabou/utils/PointF;)V

    return-object v0
.end method

.method public destinationCenter()Lcom/watabou/utils/PointF;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->motion:Lcom/watabou/noosa/tweeners/PosTweener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/watabou/utils/PointF;

    iget-object v2, v0, Lcom/watabou/noosa/tweeners/PosTweener;->end:Lcom/watabou/utils/PointF;

    iget v2, v2, Lcom/watabou/utils/PointF;->x:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    iget-object v0, v0, Lcom/watabou/noosa/tweeners/PosTweener;->end:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    invoke-direct {v1, v3, v2}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    return-object v0
.end method

.method public die()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->sleeping:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_1
    return-void
.end method

.method public draw()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->renderShadow:Z

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->vertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcom/watabou/noosa/Image;->dirty:Z

    .line 10
    :cond_2
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v1}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 12
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->updateMatrix()V

    .line 14
    iget-object v1, v0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowMatrix:[F

    invoke-virtual {v1, v2}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 15
    iget v1, p0, Lcom/watabou/noosa/Visual;->am:F

    const v2, 0x3f19999a    # 0.6f

    mul-float v7, v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v1, p0, Lcom/watabou/noosa/Visual;->aa:F

    mul-float v11, v1, v2

    move-object v3, v0

    invoke-virtual/range {v3 .. v11}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 16
    iget-object v1, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->drawQuad(Lcom/watabou/glwrap/Vertexbuffer;)V

    .line 17
    :cond_3
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    :cond_4
    :goto_1
    return-void
.end method

.method public emitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 2
    iput-object p0, v0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    return-object v0
.end method

.method public flash()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/watabou/noosa/Visual;->ga:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ba:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ra:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flashTime:F

    return-void
.end method

.method public declared-synchronized hideAlert()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Alert;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideLost()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Lost;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideSleep()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Sleep;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public idle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public interruptMotion()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->motion:Lcom/watabou/noosa/tweeners/PosTweener;

    if-eqz v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    iput v1, v0, Lcom/watabou/noosa/tweeners/Tweener;->elapsed:F

    :cond_0
    return-void
.end method

.method public jump(IILcom/watabou/utils/Callback;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v6, v0, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float v7, v0, v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jump(IILcom/watabou/utils/Callback;FF)V

    return-void
.end method

.method public jump(IILcom/watabou/utils/Callback;FF)V
    .locals 1

    .line 3
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jumpCallback:Lcom/watabou/utils/Callback;

    .line 4
    new-instance p3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object v0

    invoke-direct {p3, p0, v0, p4, p5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;Lcom/watabou/utils/PointF;FF)V

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jumpTweener:Lcom/watabou/noosa/tweeners/Tweener;

    .line 5
    iput-object p0, p3, Lcom/watabou/noosa/tweeners/Tweener;->listener:Lcom/watabou/noosa/tweeners/Tweener$Listener;

    .line 6
    iget-object p4, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p4, p3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    return-void
.end method

.method public kill()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_2
    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->linkVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    iput-object p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 4
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 5
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 7
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->renderShadow:Z

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq p1, v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iput-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    goto :goto_0

    .line 15
    :cond_2
    throw v1

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->updateSpriteState()V

    return-void
.end method

.method public linkVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    return-void
.end method

.method public move(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/tweeners/PosTweener;

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object p2

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->moveInterval:F

    invoke-direct {v0, p0, p2, v1}, Lcom/watabou/noosa/tweeners/PosTweener;-><init>(Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->motion:Lcom/watabou/noosa/tweeners/PosTweener;

    .line 4
    iput-object p0, v0, Lcom/watabou/noosa/tweeners/Tweener;->listener:Lcom/watabou/noosa/tweeners/Tweener$Listener;

    .line 5
    iget-object p2, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->isMoving:Z

    .line 7
    iget-boolean p2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    aget-boolean p2, p2, p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-boolean p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez p2, :cond_0

    .line 8
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripple(I)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->animCallback:Lcom/watabou/utils/Callback;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->animCallback:Lcom/watabou/utils/Callback;

    .line 16
    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->onAttackComplete()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 22
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->onOperateComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/tweeners/Tweener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jumpTweener:Lcom/watabou/noosa/tweeners/Tweener;

    if-ne p1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_0

    iget-boolean p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez p1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripple(I)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jumpCallback:Lcom/watabou/utils/Callback;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/watabou/utils/Callback;->call()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->motion:Lcom/watabou/noosa/tweeners/PosTweener;

    if-ne p1, v0, :cond_2

    .line 7
    monitor-enter p0

    const/4 p1, 0x0

    .line 8
    :try_start_0
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->isMoving:Z

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->motion:Lcom/watabou/noosa/tweeners/PosTweener;

    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->motion:Lcom/watabou/noosa/tweeners/PosTweener;

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->onMotionComplete()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public operate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public place(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    return-void
.end method

.method public play(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/watabou/noosa/MovieClip;->play(Lcom/watabou/noosa/MovieClip$Animation;Z)V

    :cond_1
    return-void
.end method

.method public remove(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;

    if-eqz p1, :cond_3

    const v0, 0x3f7fbe77    # 0.999f

    .line 3
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;->phase:F

    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->healing:Lcom/watabou/noosa/particles/Emitter;

    if-eqz p1, :cond_3

    .line 5
    iput-boolean v1, p1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 6
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->healing:Lcom/watabou/noosa/particles/Emitter;

    goto/16 :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->marked:Lcom/watabou/noosa/particles/Emitter;

    if-eqz p1, :cond_3

    .line 8
    iput-boolean v1, p1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 9
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->marked:Lcom/watabou/noosa/particles/Emitter;

    goto/16 :goto_0

    .line 10
    :pswitch_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->darkBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->resetColor()V

    .line 12
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 13
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->darkBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/DarkBlock;

    goto :goto_0

    .line 14
    :pswitch_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->chilled:Lcom/watabou/noosa/particles/Emitter;

    if-eqz p1, :cond_3

    .line 15
    iput-boolean v1, p1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 16
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->chilled:Lcom/watabou/noosa/particles/Emitter;

    goto :goto_0

    .line 17
    :pswitch_5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->light:Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;

    if-eqz p1, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    goto :goto_0

    .line 19
    :pswitch_6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->iceBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

    if-eqz p1, :cond_1

    .line 20
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->resetColor()V

    .line 21
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 22
    iget-boolean v3, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v3, :cond_0

    .line 23
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p1

    const v3, -0x4d2901

    const/4 v4, 0x5

    invoke-static {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    .line 24
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_shatter.mp3"

    .line 25
    invoke-virtual {p1, v3, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 26
    :cond_0
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->iceBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

    .line 27
    :cond_1
    iput-boolean v1, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    goto :goto_0

    .line 28
    :pswitch_7
    iput-boolean v1, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    goto :goto_0

    .line 29
    :pswitch_8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->invisible:Lcom/watabou/noosa/tweeners/AlphaTweener;

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 31
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->invisible:Lcom/watabou/noosa/tweeners/AlphaTweener;

    .line 32
    :cond_2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 33
    :pswitch_9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->levitation:Lcom/watabou/noosa/particles/Emitter;

    if-eqz p1, :cond_3

    .line 34
    iput-boolean v1, p1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 35
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->levitation:Lcom/watabou/noosa/particles/Emitter;

    goto :goto_0

    .line 36
    :pswitch_a
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burning:Lcom/watabou/noosa/particles/Emitter;

    if-eqz p1, :cond_3

    .line 37
    iput-boolean v1, p1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 38
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burning:Lcom/watabou/noosa/particles/Emitter;

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetColor()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->invisible:Lcom/watabou/noosa/tweeners/AlphaTweener;

    if-eqz v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :cond_0
    return-void
.end method

.method public declared-synchronized showAlert()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Alert;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 4
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Alert;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Alert;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    .line 5
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showLost()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Lost;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 4
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Lost;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Lost;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    .line 5
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showSleep()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Sleep;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 4
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Sleep;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Sleep;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    .line 5
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs showStatus(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_2

    .line 2
    array-length v0, p3

    if-lez v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->destinationCenter()Lcom/watabou/utils/PointF;

    move-result-object p3

    iget p3, p3, Lcom/watabou/utils/PointF;->x:F

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->destinationCenter()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v1, :cond_1

    .line 7
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p3, v0, v1, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->show(FFILjava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p3, v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/FloatingText;->show(FFLjava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public turnTo(II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int/2addr p1, v0

    .line 4
    rem-int/2addr p2, v0

    if-le p2, p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/MovieClip;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->listener:Lcom/watabou/noosa/MovieClip$Listener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->listener:Lcom/watabou/noosa/MovieClip$Listener;

    iget-object v1, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-interface {v0, v1}, Lcom/watabou/noosa/MovieClip$Listener;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flashTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flashTime:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flashTime:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->resetColor()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burning:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burning:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->levitation:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->levitation:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->iceBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->iceBlock:Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->chilled:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->chilled:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->marked:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->marked:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 16
    :cond_6
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->sleeping:Z

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showSleep()V

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->hideSleep()V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->alive:Z

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateMatrix()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->updateMatrix()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowMatrix:[F

    .line 3
    array-length v2, v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 4
    aget v3, v0, v2

    aput v3, v1, v2

    if-gtz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowMatrix:[F

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowWidth:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v2, v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iget v1, p0, Lcom/watabou/noosa/Visual;->height:F

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowHeight:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowOffset:F

    add-float/2addr v3, v1

    invoke-static {v0, v2, v3}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowMatrix:[F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowWidth:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowHeight:F

    invoke-static {v0, v1, v2}, Lcom/watabou/glwrap/Matrix;->scale([FFF)V

    return-void
.end method

.method public worldToCamera(I)Lcom/watabou/utils/PointF;
    .locals 6

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v2, p1, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v2, v2, v4

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    mul-float v5, v5, v3

    sub-float/2addr v2, v5

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result v1

    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    div-int/2addr p1, v3

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr p1, v3

    mul-float p1, p1, v4

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    mul-float v3, v3, v4

    sub-float/2addr p1, v3

    invoke-static {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public zap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
