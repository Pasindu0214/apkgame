.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;
.super Lcom/watabou/noosa/ui/Component;
.source "GoldIndicator.java"


# instance fields
.field public lastValue:I

.field public tf:Lcom/watabou/noosa/BitmapText;

.field public time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->lastValue:I

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v2, ""

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    const v1, 0xffff00

    .line 4
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method

.method public layout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->time:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->time:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    mul-float v0, v0, v1

    div-float v3, v0, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 6
    :cond_2
    :goto_1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->lastValue:I

    if-eq v0, v2, :cond_3

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->lastValue:I

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->tf:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {v0}, Lcom/watabou/noosa/BitmapText;->measure()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 11
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->time:F

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;->layout()V

    :cond_3
    return-void
.end method
