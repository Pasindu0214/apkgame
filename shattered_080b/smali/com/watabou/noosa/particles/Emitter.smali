.class public Lcom/watabou/noosa/particles/Emitter;
.super Lcom/watabou/noosa/Group;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/particles/Emitter$Factory;
    }
.end annotation


# instance fields
.field public autoKill:Z

.field public count:I

.field public factory:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public fillTarget:Z

.field public height:F

.field public interval:F

.field public lightMode:Z

.field public on:Z

.field public quantity:I

.field public target:Lcom/watabou/noosa/Visual;

.field public time:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->lightMode:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/watabou/noosa/particles/Emitter;->fillTarget:Z

    .line 4
    iput-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 5
    iput-boolean v1, p0, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->lightMode:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 3
    invoke-super {p0}, Lcom/watabou/noosa/Group;->draw()V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/watabou/noosa/Group;->draw()V

    :goto_0
    return-void
.end method

.method public emit(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/particles/Emitter;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    iget v1, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    iget v2, p0, Lcom/watabou/noosa/particles/Emitter;->width:F

    .line 3
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    add-float/2addr v2, v1

    iget v1, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    iget v3, p0, Lcom/watabou/noosa/particles/Emitter;->height:F

    .line 4
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    add-float/2addr v3, v1

    .line 5
    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/watabou/noosa/particles/Emitter$Factory;->emit(Lcom/watabou/noosa/particles/Emitter;IFF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/watabou/noosa/particles/Emitter;->fillTarget:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/watabou/noosa/particles/Emitter;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    iget v2, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v0, v0, Lcom/watabou/noosa/Visual;->width:F

    .line 8
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    iget v3, v2, Lcom/watabou/noosa/Visual;->y:F

    iget v2, v2, Lcom/watabou/noosa/Visual;->height:F

    .line 9
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    add-float/2addr v2, v3

    .line 10
    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/watabou/noosa/particles/Emitter$Factory;->emit(Lcom/watabou/noosa/particles/Emitter;IFF)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/watabou/noosa/particles/Emitter;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    iget v0, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v2, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/watabou/noosa/particles/Emitter;->width:F

    .line 12
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v3, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/watabou/noosa/particles/Emitter;->height:F

    .line 13
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    add-float/2addr v3, v0

    .line 14
    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/watabou/noosa/particles/Emitter$Factory;->emit(Lcom/watabou/noosa/particles/Emitter;IFF)V

    :goto_0
    return-void
.end method

.method public pos(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->width:F

    .line 5
    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->height:F

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    return-void
.end method

.method public pos(FFFF)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->x:F

    .line 8
    iput p2, p0, Lcom/watabou/noosa/particles/Emitter;->y:F

    .line 9
    iput p3, p0, Lcom/watabou/noosa/particles/Emitter;->width:F

    .line 10
    iput p4, p0, Lcom/watabou/noosa/particles/Emitter;->height:F

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    return-void
.end method

.method public pos(Lcom/watabou/utils/PointF;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    return-void
.end method

.method public start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/particles/Emitter;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/particles/Emitter$Factory;->lightMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/watabou/noosa/particles/Emitter;->lightMode:Z

    .line 3
    iput p2, p0, Lcom/watabou/noosa/particles/Emitter;->interval:F

    .line 4
    iput p3, p0, Lcom/watabou/noosa/particles/Emitter;->quantity:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->count:I

    .line 6
    invoke-static {p2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    iput p1, p0, Lcom/watabou/noosa/particles/Emitter;->time:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/Emitter;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/particles/Emitter;->time:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/watabou/noosa/particles/Emitter;->time:F

    iget v1, p0, Lcom/watabou/noosa/particles/Emitter;->interval:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    sub-float/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/watabou/noosa/particles/Emitter;->time:F

    .line 5
    iget v0, p0, Lcom/watabou/noosa/particles/Emitter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/watabou/noosa/particles/Emitter;->count:I

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/particles/Emitter;->emit(I)V

    .line 6
    iget v0, p0, Lcom/watabou/noosa/particles/Emitter;->quantity:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/watabou/noosa/particles/Emitter;->count:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/watabou/noosa/Group;->countLiving()I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/watabou/noosa/Group;->kill()V

    .line 10
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    return-void
.end method
