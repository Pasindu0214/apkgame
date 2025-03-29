.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$QuickSlotButton;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemButton;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$BadgesTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$RankingTab;
    }
.end annotation


# static fields
.field public static thread:Ljava/lang/Thread;


# instance fields
.field public busy:Lcom/watabou/noosa/Image;

.field public error:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->error:Ljava/lang/String;

    const/16 v1, 0x73

    const/16 v2, 0x90

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->resize(II)V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;

    invoke-direct {v1, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->thread:Ljava/lang/Thread;

    .line 7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->BUSY:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->busy:Lcom/watabou/noosa/Image;

    .line 10
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v4, p1, Lcom/watabou/noosa/Visual;->height:F

    div-float v5, v4, v2

    .line 11
    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 12
    iput v5, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x44340000    # 720.0f

    .line 13
    iput v0, p1, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const/high16 v0, 0x42e60000    # 115.0f

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 14
    iput v0, p1, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v0, 0x43100000    # 144.0f

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    .line 15
    iput v0, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 18
    :cond_1
    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->destroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public update()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->busy:Lcom/watabou/noosa/Image;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->error:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->busy:Lcom/watabou/noosa/Image;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_1

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "stats"

    .line 8
    invoke-static {p0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "items"

    .line 9
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "badges"

    invoke-static {v0, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    new-array v0, v1, [Lcom/watabou/noosa/Group;

    .line 10
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;

    invoke-direct {v6, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V

    aput-object v6, v0, v3

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;

    invoke-direct {v6, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$ItemsTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V

    aput-object v6, v0, v5

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$BadgesTab;

    invoke-direct {v5, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$BadgesTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V

    aput-object v5, v0, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 11
    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$RankingTab;

    aget-object v6, v2, v4

    aget-object v7, v0, v4

    invoke-direct {v5, p0, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$RankingTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Ljava/lang/String;Lcom/watabou/noosa/Group;)V

    .line 13
    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->layoutTabs()V

    .line 15
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->select(I)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 18
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 19
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->error:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_3
    :goto_1
    return-void
.end method
