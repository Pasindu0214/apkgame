.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle$2;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "SparkParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;
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
    .locals 0

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;

    invoke-virtual {p1, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->resetStatic(FF)V

    return-void
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
