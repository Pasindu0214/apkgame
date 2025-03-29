.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$BadgesTab;
.super Lcom/watabou/noosa/Group;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadgesTab"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iput-object p1, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;-><init>(Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v0, 0x42e60000    # 115.0f

    const/high16 v1, 0x43100000    # 144.0f

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
