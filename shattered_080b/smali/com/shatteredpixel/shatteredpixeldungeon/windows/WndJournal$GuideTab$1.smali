.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;Lcom/watabou/noosa/ui/Component;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->pages:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;

    .line 5
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->pages:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/watabou/noosa/ui/Component;->inside(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;->found:Z

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;->page:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pageBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
