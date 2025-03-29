.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;
.super Lcom/watabou/noosa/ui/Component;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;,
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;,
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;,
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;
    }
.end annotation


# static fields
.field public static informer:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;


# instance fields
.field public btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

.field public btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

.field public btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

.field public btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

.field public examining:Z

.field public lastEnabled:Z

.field public pickedUp:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$4;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$4;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->informer:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->lastEnabled:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    .line 4
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 6
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 7
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method

.method public static updateLayout()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->layout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 14

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    .line 2
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    const/4 v6, 0x3

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/16 v5, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;-><init>(IIIII)V

    const/4 v1, 0x3

    aput-object v7, v0, v1

    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    const/4 v6, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;-><init>(IIIII)V

    const/4 v1, 0x2

    aput-object v7, v0, v1

    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;-><init>(IIIII)V

    const/4 v1, 0x1

    aput-object v7, v0, v1

    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$1;

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/16 v13, 0x1a

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$2;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/16 v6, 0x1a

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$3;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/16 v12, 0x1a

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->pickedUp:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$PickedUpItem;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-gt v1, v3, :cond_6

    const/16 v5, 0x18

    if-nez v1, :cond_0

    .line 1
    invoke-static {}, La/b/a/e;->flipToolbar()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-ne v1, v3, :cond_2

    .line 2
    invoke-static {}, La/b/a/e;->flipToolbar()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3
    :cond_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->border(II)V

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v2, v2, v1

    const/16 v3, 0x6a

    const/16 v4, 0x13

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->frame(IIII)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 5
    invoke-static {}, La/b/a/e;->flipToolbar()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-ne v1, v3, :cond_5

    .line 6
    invoke-static {}, La/b/a/e;->flipToolbar()Z

    move-result v3

    if-nez v3, :cond_5

    .line 7
    :cond_4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->border(II)V

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v2, v2, v1

    const/16 v3, 0x56

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->frame(IIII)V

    goto :goto_1

    .line 9
    :cond_5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;->border(II)V

    .line 10
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v2, v2, v1

    const/16 v3, 0x58

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->frame(IIII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_6
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 12
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "GROUP"

    goto :goto_2

    :cond_7
    const-string v5, "SPLIT"

    :goto_2
    const-string v6, "toolbar_mode"

    invoke-static {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x4

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_c

    if-eq v5, v4, :cond_b

    if-eq v5, v2, :cond_8

    goto/16 :goto_6

    .line 14
    :cond_8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 15
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    .line 16
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 17
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v5

    .line 18
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 19
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v5

    .line 20
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_a

    aget-object v10, v5, v9

    .line 21
    iget-boolean v11, v10, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v11, :cond_9

    .line 22
    iget v10, v10, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v10

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 23
    :cond_a
    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v5, v1

    div-float v1, v5, v7

    .line 24
    :cond_b
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 25
    iget v8, v5, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v8

    .line 26
    iget v8, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v5, v1, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 27
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 28
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->x:F

    .line 29
    iget v8, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v8

    .line 30
    iget v8, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v1, v5, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 31
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 32
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->x:F

    .line 33
    iget v8, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v8

    .line 34
    iget v8, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v1, v5, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 35
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v1, v0

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 36
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 37
    aget-object v1, v1, v0

    .line 38
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v8, v1

    .line 39
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v5, v8, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 40
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v1, v4

    aget-object v8, v1, v0

    .line 41
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 42
    aget-object v1, v1, v4

    .line 43
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v8, v1

    .line 44
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v5, v8, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 45
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v1, v2

    aget-object v4, v1, v4

    .line 46
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->x:F

    .line 47
    aget-object v1, v1, v2

    .line 48
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v1

    .line 49
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v5, v4, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 50
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v4, v1, v3

    aget-object v5, v1, v2

    .line 51
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->x:F

    .line 52
    aget-object v1, v1, v3

    .line 53
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v1

    .line 54
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v4, v5, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 55
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v4, v1, v3

    .line 56
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->x:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    .line 57
    aget-object v1, v1, v3

    .line 58
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->x:F

    .line 59
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_d

    .line 60
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v4, v2

    aget-object v8, v4, v2

    .line 61
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v8, v1

    .line 62
    aget-object v4, v4, v2

    .line 63
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->y:F

    .line 64
    invoke-virtual {v5, v8, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 65
    :cond_c
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    iget v8, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v9, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v5, v8, v9}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 66
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v8

    iget v9, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v5, v8, v9}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 67
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 68
    iget v8, v5, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v1, v8

    .line 69
    iget v8, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v5, v1, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 70
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v1, v0

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    .line 71
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 72
    aget-object v1, v1, v0

    .line 73
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v8, v1

    .line 74
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v5, v8, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 75
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v1, v4

    aget-object v8, v1, v0

    .line 76
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 77
    aget-object v1, v1, v4

    .line 78
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v8, v1

    .line 79
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v5, v8, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 80
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v1, v2

    aget-object v4, v1, v4

    .line 81
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->x:F

    .line 82
    aget-object v1, v1, v2

    .line 83
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v1

    .line 84
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v5, v4, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 85
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v4, v1, v3

    aget-object v5, v1, v2

    .line 86
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->x:F

    .line 87
    aget-object v1, v1, v3

    .line 88
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v5, v1

    .line 89
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v7

    invoke-virtual {v4, v5, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 90
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v1, v1, v3

    .line 91
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->x:F

    .line 92
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_d

    .line 93
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v4, v4, v3

    .line 94
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float/2addr v1, v4

    .line 95
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_d

    .line 96
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v5, v4, v2

    aget-object v8, v4, v2

    .line 97
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v8, v1

    .line 98
    aget-object v4, v4, v2

    .line 99
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->y:F

    .line 100
    invoke-virtual {v5, v8, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 101
    :cond_d
    :goto_6
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 102
    invoke-static {}, La/b/a/e;->flipToolbar()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 103
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnWait:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v2, v4, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 104
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnSearch:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v2, v4, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 105
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v2, v4, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    :goto_7
    if-gt v0, v3, :cond_e

    .line 106
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnQuick:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$QuickslotTool;

    aget-object v4, v2, v0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v2

    sub-float v2, v1, v2

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v5, v7

    invoke-virtual {v4, v2, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->lastEnabled:Z

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_3

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->lastEnabled:Z

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/Gizmo;

    .line 5
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    if-eqz v2, :cond_2

    .line 6
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->lastEnabled:Z

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->enable(Z)V

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->btnInventory:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->enable(Z)V

    :cond_4
    return-void
.end method
