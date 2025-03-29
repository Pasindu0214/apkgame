.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;
.super Lcom/watabou/noosa/Image;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;
    }
.end annotation


# instance fields
.field public color:I

.field public fadeTime:F

.field public showTime:F

.field public state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

.field public time:F


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->time:F

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_3

    .line 3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->fadeTime:F

    div-float/2addr v0, v3

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->resetColor()V

    goto :goto_0

    .line 8
    :cond_2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->color:I

    invoke-virtual {p0, v1, v0}, Lcom/watabou/noosa/Visual;->tint(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 9
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 12
    :cond_5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->fadeTime:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->time:F

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    goto :goto_0

    .line 14
    :cond_6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->showTime:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->time:F

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;->state:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    :goto_0
    return-void
.end method
