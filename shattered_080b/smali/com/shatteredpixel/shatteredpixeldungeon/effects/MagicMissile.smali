.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
.super Lcom/watabou/noosa/particles/Emitter;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ForceParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WhiteParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle;
    }
.end annotation


# instance fields
.field public callback:Lcom/watabou/utils/Callback;

.field public sx:F

.field public sy:F

.field public time:F

.field public to:Lcom/watabou/utils/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    return-void
.end method

.method public static boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 2
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p2

    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p3

    iget-object p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->destinationCenter()Lcom/watabou/utils/PointF;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->reset(ILcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p2

    .line 5
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->reset(ILcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 7
    throw p0
.end method


# virtual methods
.method public reset(ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p2

    .line 2
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->reset(ILcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public reset(ILcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V
    .locals 2

    .line 4
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->callback:Lcom/watabou/utils/Callback;

    .line 5
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->to:Lcom/watabou/utils/PointF;

    .line 6
    iget p4, p2, Lcom/watabou/utils/PointF;->x:F

    iput p4, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    .line 7
    iget p4, p2, Lcom/watabou/utils/PointF;->y:F

    iput p4, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    const/4 p4, 0x0

    .line 8
    iput p4, p0, Lcom/watabou/noosa/particles/Emitter;->width:F

    .line 9
    iput p4, p0, Lcom/watabou/noosa/particles/Emitter;->height:F

    .line 10
    invoke-static {p3, p2}, Lcom/watabou/utils/PointF;->diff(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    move-result-object p2

    .line 11
    new-instance p3, Lcom/watabou/utils/PointF;

    invoke-direct {p3, p2}, Lcom/watabou/utils/PointF;-><init>(Lcom/watabou/utils/PointF;)V

    invoke-virtual {p3}, Lcom/watabou/utils/PointF;->normalize()Lcom/watabou/utils/PointF;

    const/high16 p4, 0x43480000    # 200.0f

    invoke-virtual {p3, p4}, Lcom/watabou/utils/PointF;->scale(F)Lcom/watabou/utils/PointF;

    .line 12
    iget v0, p3, Lcom/watabou/utils/PointF;->x:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->sx:F

    .line 13
    iget p3, p3, Lcom/watabou/utils/PointF;->y:F

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->sy:F

    .line 14
    invoke-virtual {p2}, Lcom/watabou/utils/PointF;->length()F

    move-result p2

    div-float/2addr p2, p4

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->time:F

    const/16 p2, 0x64

    const p3, 0x3cf5c28f    # 0.03f

    const/high16 p4, 0x41200000    # 10.0f

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    const/high16 p3, 0x40800000    # 4.0f

    const v1, 0x3c23d70a    # 0.01f

    packed-switch p1, :pswitch_data_0

    .line 15
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 16
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WhiteParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 17
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    :pswitch_0
    const/high16 p1, 0x40a00000    # 5.0f

    .line 18
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 19
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 20
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 21
    :pswitch_1
    invoke-virtual {p0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    const/16 p1, 0x6b

    .line 22
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p1

    const p2, 0x3ca3d70a    # 0.02f

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 24
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 25
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->PURPLE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 26
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 27
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 28
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->BLUE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 29
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_0

    .line 30
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 31
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->RED:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 32
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 33
    :pswitch_5
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 34
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 35
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 36
    :pswitch_6
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 37
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$EarthParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 38
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 39
    :pswitch_7
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 40
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/RainbowParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 41
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 42
    :pswitch_8
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 43
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->MISSILE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 44
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 45
    :pswitch_9
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ForceParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 46
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 47
    :pswitch_a
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$SlowParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 48
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 49
    :pswitch_b
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 50
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 51
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :pswitch_c
    const/high16 p1, 0x40400000    # 3.0f

    .line 52
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 53
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/CorrosionParticle;->MISSILE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 54
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 55
    :pswitch_d
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 56
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 57
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 58
    :pswitch_e
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 59
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 61
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->GENERAL:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 62
    invoke-virtual {p0, p1, p3, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->size(F)V

    .line 64
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 65
    invoke-virtual {p0, p1, p3, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public size(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    .line 3
    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->height:F

    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->width:F

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/Emitter;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/watabou/noosa/Game;->elapsed:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->sx:F

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    .line 5
    iget v1, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->sy:F

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    .line 6
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->time:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->time:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->callback:Lcom/watabou/utils/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    :cond_0
    return-void
.end method
