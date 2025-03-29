.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;
.super Lcom/watabou/noosa/Group;
.source "Lightning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;
    }
.end annotation


# instance fields
.field public arcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;",
            ">;"
        }
    .end annotation
.end field

.field public callback:Lcom/watabou/utils/Callback;

.field public life:F


# direct methods
.method public constructor <init>(IILcom/watabou/utils/Callback;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p2

    .line 4
    invoke-direct {v1, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;",
            ">;",
            "Lcom/watabou/utils/Callback;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->arcs:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->callback:Lcom/watabou/utils/Callback;

    const p1, 0x3e99999a    # 0.3f

    .line 11
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->life:F

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->life:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->life:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->callback:Lcom/watabou/utils/Callback;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    goto :goto_1

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    div-float/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;->arcs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 6
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc1:Lcom/watabou/noosa/Image;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;->arc2:Lcom/watabou/noosa/Image;

    iput v0, v2, Lcom/watabou/noosa/Visual;->am:F

    iput v0, v3, Lcom/watabou/noosa/Visual;->am:F

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    :cond_2
    :goto_1
    return-void
.end method
