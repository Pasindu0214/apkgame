.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;
.super Ljava/lang/Object;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$1;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->FACTORY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;

    return-void
.end method

.method public static at(III)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    return-void
.end method

.method public static at(Lcom/watabou/utils/PointF;FFII)V
    .locals 1

    if-gtz p4, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/particles/Emitter;->pos(Lcom/watabou/utils/PointF;)V

    .line 10
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->FACTORY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->color:I

    .line 11
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->dir:F

    .line 12
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->cone:F

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p0, p1, p4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method

.method public static at(Lcom/watabou/utils/PointF;II)V
    .locals 1

    if-gtz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/particles/Emitter;->pos(Lcom/watabou/utils/PointF;)V

    .line 4
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->FACTORY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->color:I

    const p1, -0x4036f026

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->dir:F

    const p1, 0x40490fda

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash$SplashFactory;->cone:F

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
