.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "WebParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 2

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle;

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    iput p3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p4, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget v1, v0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput v1, v0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    const/high16 v1, 0x43b40000    # 360.0f

    .line 6
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
