.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;
.super Lcom/watabou/noosa/Image;
.source "Speck.java"


# static fields
.field public static factories:Lcom/watabou/utils/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/watabou/noosa/particles/Emitter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public static film:Lcom/watabou/noosa/TextureFilm;


# instance fields
.field public left:F

.field public lifespan:F

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factories:Lcom/watabou/utils/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "specks.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x40600000    # 3.5f

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public static factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(IZ)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static factory(IZ)Lcom/watabou/noosa/particles/Emitter$Factory;
    .locals 1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factories:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/particles/Emitter$Factory;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;-><init>(IZ)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factories:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p0, v0}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public reset(IFFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->type:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_0

    .line 3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 9
    :goto_0
    iget-object v5, v0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v6, v5, Lcom/watabou/utils/PointF;->x:F

    sub-float v6, p2, v6

    iput v6, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 10
    iget v5, v5, Lcom/watabou/utils/PointF;->y:F

    sub-float v5, p3, v5

    iput v5, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 12
    iget-object v5, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 13
    iput v6, v5, Lcom/watabou/utils/PointF;->x:F

    .line 14
    iput v6, v5, Lcom/watabou/utils/PointF;->y:F

    .line 15
    iget-object v7, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/4 v8, 0x0

    .line 16
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 17
    iput v8, v7, Lcom/watabou/utils/PointF;->y:F

    .line 18
    iget-object v9, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 19
    iput v8, v9, Lcom/watabou/utils/PointF;->x:F

    .line 20
    iput v8, v9, Lcom/watabou/utils/PointF;->y:F

    .line 21
    iput v8, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 22
    iput v8, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const v12, -0x3fb6f026

    const/high16 v13, 0x3fc00000    # 1.5f

    const/high16 v15, 0x42800000    # 64.0f

    const v16, 0x40c90fda

    const/high16 v10, -0x3e600000    # -20.0f

    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v14, 0x43000000    # 128.0f

    const/high16 v3, 0x43b40000    # 360.0f

    packed-switch v2, :pswitch_data_1

    const/high16 v5, 0x40400000    # 3.0f

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_5
    const v1, 0xffffff

    .line 23
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x43960000    # 300.0f

    .line 24
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    int-to-float v2, v2

    mul-float v1, v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 25
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 26
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_6
    const v1, 0xee7722

    .line 27
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x43960000    # 300.0f

    .line 28
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    mul-float v1, v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 29
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 30
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_7
    const v1, 0x8ad8d8

    .line 31
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 32
    invoke-static {v10, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 33
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 34
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_8
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 36
    iput v11, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 37
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 38
    invoke-static {v6, v13}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 39
    :pswitch_9
    invoke-virtual {v0, v8, v6, v6}, Lcom/watabou/noosa/Visual;->color(FFF)V

    goto/16 :goto_5

    :pswitch_a
    const/high16 v1, -0x340000

    .line 40
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->tint(I)V

    goto/16 :goto_6

    :pswitch_b
    const/high16 v1, 0x1000000

    .line 41
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 42
    invoke-static {v10, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 43
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 44
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 45
    :pswitch_c
    invoke-static {v12}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    invoke-static {v15}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 46
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 47
    iput v8, v1, Lcom/watabou/utils/PointF;->x:F

    .line 48
    iput v14, v1, Lcom/watabou/utils/PointF;->y:F

    .line 49
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    .line 50
    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const v1, 0x3f028f5c    # 0.51f

    .line 51
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_d
    const/16 v1, 0x3300

    .line 52
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/high16 v1, -0x3e100000    # -30.0f

    .line 53
    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 54
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 55
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_e
    const v1, 0xffff66

    .line 56
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 57
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 58
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    invoke-static/range {v16 .. v16}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_f
    const v1, 0xffff66

    .line 60
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    const/high16 v1, -0x3e100000    # -30.0f

    .line 61
    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 62
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 63
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_10
    const v1, 0xaaaaaa

    .line 64
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 65
    iput v11, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 66
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 67
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_11
    const v1, 0x50ff60

    .line 68
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 69
    iput v11, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 70
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 71
    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_12
    const/high16 v1, 0x42000000    # 32.0f

    .line 72
    iput v1, v7, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, -0x3d800000    # -64.0f

    .line 73
    iput v1, v9, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x43340000    # 180.0f

    .line 74
    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 75
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 76
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 77
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    const/high16 v2, -0x3d380000    # -100.0f

    .line 78
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 79
    iput v2, v7, Lcom/watabou/utils/PointF;->y:F

    const/high16 v4, -0x40000000    # -2.0f

    mul-float v2, v2, v4

    div-float/2addr v2, v1

    .line 80
    iput v8, v9, Lcom/watabou/utils/PointF;->x:F

    .line 81
    iput v2, v9, Lcom/watabou/utils/PointF;->y:F

    .line 82
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 83
    iput v3, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    goto/16 :goto_7

    :pswitch_14
    int-to-float v2, v1

    const v4, 0x40490fda

    mul-float v2, v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42480000    # 50.0f

    .line 84
    invoke-virtual {v7, v2, v4}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 85
    iget-object v2, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    iget-object v4, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v5, v4, Lcom/watabou/utils/PointF;->x:F

    neg-float v5, v5

    iget v4, v4, Lcom/watabou/utils/PointF;->y:F

    neg-float v4, v4

    .line 86
    iput v5, v2, Lcom/watabou/utils/PointF;->x:F

    .line 87
    iput v4, v2, Lcom/watabou/utils/PointF;->y:F

    mul-int/lit8 v1, v1, 0x24

    int-to-float v1, v1

    .line 88
    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 89
    iput v3, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 90
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 91
    :pswitch_15
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, -0x3d000000    # -128.0f

    const/high16 v2, -0x3d800000    # -64.0f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    goto :goto_3

    :cond_2
    invoke-static {v15, v14}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    .line 92
    :goto_3
    iput v1, v7, Lcom/watabou/utils/PointF;->x:F

    .line 93
    iput v8, v7, Lcom/watabou/utils/PointF;->y:F

    .line 94
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->x:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_3

    const/high16 v11, -0x3ccc0000    # -180.0f

    goto :goto_4

    :cond_3
    const/high16 v11, 0x43340000    # 180.0f

    :goto_4
    iput v11, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 95
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    iget-object v2, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v2, v2, Lcom/watabou/utils/PointF;->x:F

    neg-float v2, v2

    .line 96
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 97
    iput v8, v1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 98
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 99
    :pswitch_16
    invoke-static {v12}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v7, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 100
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 101
    iput v8, v1, Lcom/watabou/utils/PointF;->x:F

    .line 102
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 103
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/high16 v2, 0x43340000    # 180.0f

    .line 104
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 105
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 106
    :pswitch_17
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, 0x42b40000    # 90.0f

    .line 107
    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 108
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    .line 109
    iput v8, v0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_7

    :pswitch_18
    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f333333    # 0.7f

    .line 110
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    mul-float v1, v1, v12

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 111
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x43800000    # 256.0f

    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 112
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    neg-float v1, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_19
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41700000    # 15.0f

    .line 113
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    neg-float v1, v1

    iput v1, v7, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x43340000    # 180.0f

    .line 114
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 115
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 116
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_1a
    const/high16 v1, -0x3e900000    # -15.0f

    .line 117
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 118
    iput v1, v7, Lcom/watabou/utils/PointF;->y:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 119
    invoke-static {v1, v6}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    .line 120
    iput v2, v5, Lcom/watabou/utils/PointF;->x:F

    .line 121
    iput v2, v5, Lcom/watabou/utils/PointF;->y:F

    .line 122
    invoke-static {v1, v13}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_1b
    const/16 v1, -0xa

    const/16 v2, 0xa

    .line 123
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3de00000    # -40.0f

    .line 124
    iput v1, v7, Lcom/watabou/utils/PointF;->x:F

    .line 125
    iput v2, v7, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, -0x3dcc0000    # -45.0f

    const/high16 v2, 0x42340000    # 45.0f

    .line 126
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 127
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 128
    :pswitch_1c
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 129
    iget-object v2, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v1, v3

    const v3, 0x3c8efa35

    mul-float v1, v1, v3

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 130
    iput v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    :pswitch_1d
    const/high16 v1, -0x3e100000    # -30.0f

    .line 131
    invoke-static {v1, v11}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 132
    iget-object v2, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v1, v3

    const v3, 0x3c8efa35

    mul-float v1, v1, v3

    invoke-virtual {v2, v1, v11}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 133
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto/16 :goto_7

    .line 134
    :pswitch_1e
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    .line 135
    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 136
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    .line 137
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 138
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 139
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 140
    iput v8, v1, Lcom/watabou/utils/PointF;->x:F

    .line 141
    iput v15, v1, Lcom/watabou/utils/PointF;->y:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 142
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    .line 143
    iget v2, v0, Lcom/watabou/noosa/Visual;->y:F

    mul-float v15, v15, v1

    sub-float/2addr v2, v15

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    goto/16 :goto_7

    :pswitch_1f
    const/high16 v1, 0x3f000000    # 0.5f

    .line 144
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    const/high16 v1, -0x3db80000    # -50.0f

    .line 145
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 146
    iput v1, v7, Lcom/watabou/utils/PointF;->y:F

    .line 147
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    .line 148
    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    goto :goto_7

    :pswitch_20
    const v1, 0x3e4ccccd    # 0.2f

    .line 149
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    .line 150
    invoke-static/range {v16 .. v16}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    div-float/2addr v2, v4

    invoke-virtual {v7, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 151
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 152
    iput v8, v1, Lcom/watabou/utils/PointF;->x:F

    .line 153
    iput v14, v1, Lcom/watabou/utils/PointF;->y:F

    .line 154
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 155
    iput v3, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    goto :goto_7

    :goto_5
    :pswitch_21
    const v1, 0x3f666666    # 0.9f

    .line 156
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto :goto_7

    .line 157
    :pswitch_22
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 158
    iput v10, v7, Lcom/watabou/utils/PointF;->y:F

    .line 159
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto :goto_7

    :pswitch_23
    const v1, 0x3f4ccccd    # 0.8f

    .line 160
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto :goto_7

    .line 161
    :goto_6
    :pswitch_24
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, 0x42b40000    # 90.0f

    .line 162
    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 163
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto :goto_7

    .line 164
    :pswitch_25
    invoke-static/range {v16 .. v16}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    invoke-static {v14}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 165
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 166
    iput v8, v1, Lcom/watabou/utils/PointF;->x:F

    .line 167
    iput v14, v1, Lcom/watabou/utils/PointF;->y:F

    .line 168
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    .line 169
    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 170
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    goto :goto_7

    .line 171
    :pswitch_26
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 172
    iput v10, v7, Lcom/watabou/utils/PointF;->y:F

    .line 173
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    .line 174
    :goto_7
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->left:F

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
    .end packed-switch
.end method

.method public update()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->left:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->left:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    goto/16 :goto_d

    .line 4
    :cond_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->lifespan:F

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 5
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->type:I

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3fa00000    # 1.25f

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f000000    # 0.5f

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    const v0, 0xaaaaaa

    const v3, 0xff8800

    .line 6
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    :pswitch_1
    cmpg-float v0, v1, v10

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sub-float v0, v2, v1

    :goto_0
    float-to-double v3, v0

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 8
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    add-float/2addr v1, v2

    .line 9
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto/16 :goto_d

    :pswitch_2
    cmpg-float v0, v1, v10

    if-gez v0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    sub-float/2addr v2, v1

    :goto_1
    mul-float v2, v2, v9

    .line 11
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 12
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    .line 13
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 14
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto/16 :goto_d

    :pswitch_3
    mul-float v1, v1, v1

    sub-float/2addr v2, v1

    .line 15
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    :pswitch_4
    sub-float/2addr v2, v1

    .line 16
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 17
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    cmpg-float v3, v1, v10

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    mul-float v1, v1, v9

    .line 18
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 19
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto/16 :goto_d

    .line 20
    :pswitch_5
    iget-object v3, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    mul-float v0, v0, v8

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v0, v7

    iput v0, v3, Lcom/watabou/utils/PointF;->x:F

    .line 21
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v2

    mul-float v0, v0, v10

    iput v0, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->rm:F

    cmpg-float v0, v1, v6

    if-gez v0, :cond_4

    goto :goto_3

    :cond_4
    sub-float/2addr v2, v1

    mul-float v2, v2, v4

    .line 22
    :goto_3
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    :pswitch_6
    cmpg-float v0, v1, v10

    if-gez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    sub-float v0, v2, v1

    :goto_4
    mul-float v0, v0, v10

    float-to-double v3, v0

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 24
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    add-float/2addr v1, v2

    .line 25
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 26
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto/16 :goto_d

    :pswitch_7
    cmpg-float v0, v1, v7

    if-gez v0, :cond_6

    mul-float v2, v1, v8

    .line 27
    :cond_6
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    .line 28
    :pswitch_8
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    sub-float v3, v2, v1

    .line 29
    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 30
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    mul-float v1, v1, v1

    sub-float/2addr v2, v1

    .line 31
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    :pswitch_9
    cmpg-float v0, v1, v10

    if-gez v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    sub-float v0, v2, v1

    :goto_5
    mul-float v0, v0, v9

    float-to-double v3, v0

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 33
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    add-float/2addr v1, v2

    mul-float v1, v1, v10

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 34
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->left:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    goto/16 :goto_d

    :pswitch_a
    mul-float v1, v1, v1

    sub-float/2addr v2, v1

    .line 35
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    :pswitch_b
    cmpg-float v0, v1, v7

    if-gez v0, :cond_8

    mul-float v2, v1, v8

    .line 36
    :cond_8
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    .line 37
    :pswitch_c
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    sub-float/2addr v2, v1

    .line 38
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 39
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    goto/16 :goto_d

    :pswitch_d
    cmpg-float v0, v1, v6

    if-gez v0, :cond_9

    goto :goto_6

    :cond_9
    sub-float/2addr v2, v1

    mul-float v2, v2, v4

    .line 40
    :goto_6
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    goto/16 :goto_d

    :pswitch_e
    cmpg-float v0, v1, v10

    if-gez v0, :cond_a

    move v2, v1

    goto :goto_7

    :cond_a
    sub-float/2addr v2, v1

    :goto_7
    mul-float v2, v2, v9

    float-to-double v2, v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 42
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v1, v1, v2

    .line 43
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 44
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_d

    .line 45
    :pswitch_f
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    cmpg-float v3, v1, v10

    if-gez v3, :cond_b

    float-to-double v1, v1

    goto :goto_8

    :cond_b
    sub-float/2addr v2, v1

    float-to-double v1, v2

    :goto_8
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 46
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 47
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_d

    .line 48
    :pswitch_10
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    cmpg-float v3, v1, v10

    if-gez v3, :cond_c

    float-to-double v1, v1

    goto :goto_9

    :cond_c
    sub-float/2addr v2, v1

    float-to-double v1, v2

    :goto_9
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 49
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 50
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_d

    .line 51
    :pswitch_11
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    cmpg-float v3, v1, v7

    if-gez v3, :cond_d

    mul-float v1, v1, v8

    goto :goto_a

    :cond_d
    sub-float/2addr v2, v1

    mul-float v1, v2, v5

    .line 52
    :goto_a
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 53
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 54
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    goto :goto_d

    .line 55
    :pswitch_12
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    sub-float/2addr v2, v1

    .line 56
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 57
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    cmpg-float v0, v1, v7

    if-gez v0, :cond_e

    mul-float v1, v1, v8

    goto :goto_b

    :cond_e
    mul-float v1, v2, v5

    .line 58
    :goto_b
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    goto :goto_d

    :pswitch_13
    cmpg-float v0, v1, v10

    if-gez v0, :cond_f

    goto :goto_c

    :cond_f
    mul-float v1, v1, v9

    sub-float v2, v9, v1

    .line 59
    :goto_c
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_4
        :pswitch_13
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_12
        :pswitch_6
        :pswitch_11
        :pswitch_e
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
