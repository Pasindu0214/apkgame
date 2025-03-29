.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;
.super Lcom/watabou/noosa/Image;
.source "BadgeBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;
    }
.end annotation


# static fields
.field public static atlas:Lcom/watabou/noosa/TextureFilm;

.field public static current:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;


# instance fields
.field public index:I

.field public state:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

.field public time:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "badges.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->atlas:Lcom/watabou/noosa/TextureFilm;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->atlas:Lcom/watabou/noosa/TextureFilm;

    .line 5
    :cond_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->index:I

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->atlas:Lcom/watabou/noosa/TextureFilm;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 7
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v2, v1

    .line 8
    iput v0, p1, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput v2, p1, Lcom/watabou/utils/PointF;->y:F

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 11
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 12
    iput v0, p1, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput v0, p1, Lcom/watabou/utils/PointF;->y:F

    .line 14
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    const p1, 0x3e4ccccd    # 0.2f

    .line 15
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    .line 16
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_badge.mp3"

    .line 17
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public static highlight(Lcom/watabou/noosa/Image;I)V
    .locals 6

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x40800000    # 4.0f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {v0, v5, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {v0, v2, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 4
    :pswitch_3
    invoke-virtual {v0, v3, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-virtual {v0, v5, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 6
    :pswitch_5
    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 7
    :pswitch_6
    invoke-virtual {v0, v5, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 8
    :pswitch_7
    invoke-virtual {v0, v2, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 9
    :pswitch_8
    invoke-virtual {v0, v4, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 10
    :pswitch_9
    invoke-virtual {v0, v4, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 11
    :pswitch_a
    invoke-virtual {v0, v4, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 12
    :pswitch_b
    invoke-virtual {v0, v4, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 13
    :pswitch_c
    invoke-virtual {v0, v5, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 14
    :pswitch_d
    invoke-virtual {v0, v3, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto/16 :goto_0

    .line 15
    :pswitch_e
    invoke-virtual {v0, v3, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 16
    :pswitch_f
    invoke-virtual {v0, v3, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 17
    :pswitch_10
    invoke-virtual {v0, v2, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 18
    :pswitch_11
    invoke-virtual {v0, v4, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 19
    :pswitch_12
    invoke-virtual {v0, v4, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 20
    :pswitch_13
    invoke-virtual {v0, v4, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 21
    :pswitch_14
    invoke-virtual {v0, v1, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 22
    :pswitch_15
    invoke-virtual {v0, v3, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 23
    :pswitch_16
    invoke-virtual {v0, v4, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 24
    :pswitch_17
    invoke-virtual {v0, v3, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 25
    :pswitch_18
    invoke-virtual {v0, v3, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 26
    :pswitch_19
    invoke-virtual {v0, v5, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 27
    :pswitch_1a
    invoke-virtual {v0, v3, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 28
    :pswitch_1b
    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 29
    :pswitch_1c
    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 30
    :pswitch_1d
    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 31
    :pswitch_1e
    invoke-virtual {v0, v4, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 32
    :pswitch_1f
    invoke-virtual {v0, v3, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 33
    :pswitch_20
    invoke-virtual {v0, v2, v5}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 34
    :pswitch_21
    invoke-virtual {v0, v3, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 35
    :pswitch_22
    invoke-virtual {v0, v3, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 36
    :pswitch_23
    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    .line 37
    :goto_0
    iget p1, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    mul-float p1, p1, v2

    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 38
    iget p1, v0, Lcom/watabou/utils/PointF;->y:F

    iget v2, v1, Lcom/watabou/utils/PointF;->y:F

    mul-float p1, p1, v2

    iput p1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 39
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v2, p1, Lcom/watabou/utils/PointF;->x:F

    neg-float v2, v2

    iget v3, v1, Lcom/watabou/utils/PointF;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    neg-float p1, p1

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v1, v4

    mul-float v1, v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    .line 40
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->point()Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/utils/PointF;->offset(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 41
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;-><init>()V

    const/4 v1, 0x0

    .line 42
    iget v2, v0, Lcom/watabou/utils/PointF;->x:F

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    const/16 v3, 0x65

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->reset(IFFI)V

    .line 43
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    iput-object v0, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 44
    iget-object p0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static image(I)Lcom/watabou/noosa/Image;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 2
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "badges.png"

    .line 3
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->atlas:Lcom/watabou/noosa/TextureFilm;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->atlas:Lcom/watabou/noosa/TextureFilm;

    .line 6
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->atlas:Lcom/watabou/noosa/TextureFilm;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-object v0
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->current:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->current:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    div-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v2

    .line 6
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    add-float v4, v0, v3

    mul-float v4, v4, v1

    .line 7
    iput v4, v2, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput v4, v2, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v3, v0

    .line 9
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 12
    :cond_4
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    goto :goto_0

    .line 14
    :cond_5
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->time:F

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner$State;

    .line 16
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 17
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 18
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 19
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 20
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->index:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->highlight(Lcom/watabou/noosa/Image;I)V

    :goto_0
    return-void
.end method
