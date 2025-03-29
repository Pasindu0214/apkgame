.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;
.super Lcom/watabou/noosa/ui/Component;
.source "Fireball.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;
    }
.end annotation


# static fields
.field public static final BLIGHT:Lcom/watabou/utils/RectF;

.field public static final FLAME1:Lcom/watabou/utils/RectF;

.field public static final FLAME2:Lcom/watabou/utils/RectF;

.field public static final FLIGHT:Lcom/watabou/utils/RectF;


# instance fields
.field public bLight:Lcom/watabou/noosa/Image;

.field public emitter:Lcom/watabou/noosa/particles/Emitter;

.field public fLight:Lcom/watabou/noosa/Image;

.field public sparks:Lcom/watabou/noosa/Group;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/watabou/utils/RectF;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->BLIGHT:Lcom/watabou/utils/RectF;

    .line 2
    new-instance v0, Lcom/watabou/utils/RectF;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->FLIGHT:Lcom/watabou/utils/RectF;

    .line 3
    new-instance v0, Lcom/watabou/utils/RectF;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->FLAME1:Lcom/watabou/utils/RectF;

    .line 4
    new-instance v0, Lcom/watabou/utils/RectF;

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->FLAME2:Lcom/watabou/utils/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 6

    .line 1
    new-instance v0, Lcom/watabou/noosa/Group;

    invoke-direct {v0}, Lcom/watabou/noosa/Group;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->sparks:Lcom/watabou/noosa/Group;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 4
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "fireball.png"

    .line 5
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->bLight:Lcom/watabou/noosa/Image;

    .line 7
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->BLIGHT:Lcom/watabou/utils/RectF;

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->bLight:Lcom/watabou/noosa/Image;

    iget-object v2, v0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 9
    iput v3, v2, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v3, v2, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 11
    iput v2, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 12
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    new-instance v0, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->emitter:Lcom/watabou/noosa/particles/Emitter;

    .line 14
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$1;

    invoke-direct {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;)V

    const v3, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v0, v2, v3, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->emitter:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 18
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 20
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->fLight:Lcom/watabou/noosa/Image;

    .line 21
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->FLIGHT:Lcom/watabou/utils/RectF;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->fLight:Lcom/watabou/noosa/Image;

    iget-object v1, v0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v2, v4

    .line 23
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 24
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x43b40000    # 360.0f

    .line 25
    iput v1, v0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 26
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->bLight:Lcom/watabou/noosa/Image;

    iget-object v0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v1, 0x2601

    invoke-virtual {v0, v1, v1}, Lcom/watabou/gltextures/SmartTexture;->filter(II)V

    return-void
.end method

.method public draw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Group;->draw()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    return-void
.end method

.method public layout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->bLight:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v4, v1, v4

    iput v4, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v5, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float v6, v5, v3

    sub-float v6, v4, v6

    iput v6, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->emitter:Lcom/watabou/noosa/particles/Emitter;

    const/high16 v6, 0x40800000    # 4.0f

    div-float v7, v2, v6

    sub-float/2addr v1, v7

    div-float v6, v5, v6

    sub-float/2addr v4, v6

    div-float/2addr v2, v3

    div-float/2addr v5, v3

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->fLight:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public update()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->sparks:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/particles/PixelParticle;

    .line 4
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const v1, 0xff66ff    # 2.3455E-38f

    const v4, 0x66ff66

    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/watabou/noosa/particles/PixelParticle;->reset(FFIFF)V

    .line 5
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v2, -0x3de00000    # -40.0f

    const/high16 v3, 0x42200000    # 40.0f

    .line 6
    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    const/high16 v3, -0x3d900000    # -60.0f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 7
    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v3

    .line 8
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput v3, v1, Lcom/watabou/utils/PointF;->y:F

    .line 10
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v2, 0x0

    const/high16 v3, 0x42a00000    # 80.0f

    .line 11
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 12
    iput v3, v1, Lcom/watabou/utils/PointF;->y:F

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->sparks:Lcom/watabou/noosa/Group;

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method
