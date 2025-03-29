.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.source "BadgesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;
    }
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;->items:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->filtered(Z)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 4
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;

    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public layout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    add-float/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 4
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->layout()V

    return-void
.end method

.method public onClick(FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;

    .line 3
    invoke-virtual {v3, p1, p2}, Lcom/watabou/noosa/ui/Component;->inside(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    sget-object v4, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v5, 0x3f99999a    # 1.2f

    const v6, 0x3f333333    # 0.7f

    const-string v7, "snd_click.mp3"

    invoke-virtual {v4, v7, v6, v6, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    sget-object v4, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v4, v4, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 6
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBadge;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-direct {v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBadge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

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
