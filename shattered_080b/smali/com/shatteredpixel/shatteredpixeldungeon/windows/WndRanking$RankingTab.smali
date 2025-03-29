.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$RankingTab;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankingTab"
.end annotation


# instance fields
.field public page:Lcom/watabou/noosa/Group;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Ljava/lang/String;Lcom/watabou/noosa/Group;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$RankingTab;->page:Lcom/watabou/noosa/Group;

    return-void
.end method


# virtual methods
.method public select(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$LabeledTab;->select(Z)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$RankingTab;->page:Lcom/watabou/noosa/Group;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;->selected:Z

    iput-boolean v0, p1, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    return-void
.end method
