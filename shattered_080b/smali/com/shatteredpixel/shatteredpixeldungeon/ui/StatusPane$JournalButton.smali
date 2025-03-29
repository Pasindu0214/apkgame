.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;
.super Lcom/watabou/noosa/ui/Button;
.source "StatusPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JournalButton"
.end annotation


# instance fields
.field public bg:Lcom/watabou/noosa/Image;

.field public flashing:Z

.field public journalIcon:Lcom/watabou/noosa/Image;

.field public keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

.field public time:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    iget v1, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x41500000    # 13.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 3
    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v6, Lcom/watabou/noosa/Image;

    const-string v1, "menu_button.png"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/16 v5, 0xb

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    .line 3
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    new-instance v0, Lcom/watabou/noosa/Image;

    const-string v8, "menu_button.png"

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/16 v11, 0xb

    const/4 v12, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    .line 7
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->updateKeyDisplay()V

    return-void
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->JOURNAL:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x41500000    # 13.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->width()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    iget v2, v1, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->height()F

    move-result v1

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    iget v2, v1, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    iput v2, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 8
    iget v2, v1, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v2, v4

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 9
    iget v2, v1, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/noosa/Visual;->width:F

    .line 10
    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/noosa/Visual;->height:F

    .line 11
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->flashing:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->time:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/watabou/noosa/Visual;->am:F

    iput v2, v0, Lcom/watabou/noosa/Visual;->am:F

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;-><init>()V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method

.method public onPointerDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_click.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->brightness(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    :goto_0
    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->flashing:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->time:F

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->time:F

    mul-float v2, v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->am:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    iget v1, v1, Lcom/watabou/noosa/Visual;->am:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->am:F

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->time:F

    float-to-double v0, v0

    const-wide v2, 0x3ff0bd082ad82fcbL    # 1.0461503671276542

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->time:F

    :cond_0
    return-void
.end method

.method public updateKeyDisplay()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    if-eqz v0, :cond_6

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    .line 3
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->getRecords(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;

    .line 4
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    .line 5
    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ge v6, v7, :cond_1

    .line 6
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    aput v2, v3, v4

    goto :goto_0

    :cond_1
    if-ne v6, v7, :cond_0

    .line 7
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keyMap:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 9
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v4, v5

    .line 10
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$KeyRecord;->key:Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;

    .line 11
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/2addr v6, v3

    .line 12
    aput v6, v4, v5

    goto :goto_0

    .line 13
    :cond_2
    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    .line 14
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->keys:[I

    array-length v3, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget v6, v1, v5

    .line 15
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_3
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->dirty:Z

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    .line 18
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    if-lez v1, :cond_4

    const/4 v4, 0x1

    .line 19
    :cond_4
    iput-boolean v4, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->journalIcon:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->keyIcon:Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;

    iget-boolean v3, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 21
    iget v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/KeyDisplay;->totalKeys:I

    if-lez v0, :cond_5

    .line 22
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->brightness(F)V

    goto :goto_2

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$JournalButton;->bg:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    :goto_2
    return-void

    :cond_6
    const/4 v0, 0x0

    .line 24
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
