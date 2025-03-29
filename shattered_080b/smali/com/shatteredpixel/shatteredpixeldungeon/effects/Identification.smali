.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;
.super Lcom/watabou/noosa/Group;
.source "Identification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification$Speck;
    }
.end annotation


# static fields
.field public static DOTS:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;->DOTS:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x3
        0x0
        -0x3
        0x1
        -0x3
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/watabou/utils/PointF;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;->DOTS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification$Speck;

    iget v3, p1, Lcom/watabou/utils/PointF;->x:F

    iget v4, p1, Lcom/watabou/utils/PointF;->y:F

    aget v5, v1, v0

    add-int/lit8 v6, v0, 0x1

    aget v1, v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification$Speck;-><init>(FFII)V

    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification$Speck;

    iget v2, p1, Lcom/watabou/utils/PointF;->x:F

    iget v3, p1, Lcom/watabou/utils/PointF;->y:F

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;->DOTS:[I

    aget v5, v4, v0

    aget v4, v4, v6

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification$Speck;-><init>(FFII)V

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
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

.method public update()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Group;->countLiving()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_0
    return-void
.end method
