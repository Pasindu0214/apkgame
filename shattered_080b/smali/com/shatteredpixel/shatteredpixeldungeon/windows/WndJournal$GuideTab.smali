.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;
.super Lcom/watabou/noosa/ui/Component;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuideTab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;
    }
.end annotation


# instance fields
.field public list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

.field public pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->pages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$1;

    new-instance v1, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v1}, Lcom/watabou/noosa/ui/Component;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;Lcom/watabou/noosa/ui/Component;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
