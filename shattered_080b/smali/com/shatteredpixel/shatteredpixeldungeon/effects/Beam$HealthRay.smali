.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;
.super Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;
.source "Beam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HealthRay"
.end annotation


# direct methods
.method public constructor <init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->HEALTH_RAY:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;FLcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$1;)V

    return-void
.end method
