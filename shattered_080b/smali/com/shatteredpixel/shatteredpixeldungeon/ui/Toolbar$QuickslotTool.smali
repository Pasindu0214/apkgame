.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickslotTool"
.end annotation


# instance fields
.field public borderLeft:I

.field public borderRight:I

.field public slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;-><init>(IIII)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->borderLeft:I

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->borderRight:I

    .line 4
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    invoke-direct {p1, p5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;-><init>(I)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public border(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->borderLeft:I

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->borderRight:I

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->layout()V

    return-void
.end method

.method public enable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->enable(Z)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    .line 3
    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->enableSlot()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->enable(Z)V

    :goto_0
    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->borderLeft:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->borderRight:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
