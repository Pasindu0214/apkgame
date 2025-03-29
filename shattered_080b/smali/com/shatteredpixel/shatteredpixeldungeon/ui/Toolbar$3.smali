.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public gold:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->createChildren()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$3;->gold:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->INVENTORY:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$3;->gold:Lcom/shatteredpixel/shatteredpixeldungeon/ui/GoldIndicator;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public onClick()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method

.method public onLongClick()Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;->last_index:I

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;-><init>()V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    const/4 v0, 0x1

    return v0
.end method
