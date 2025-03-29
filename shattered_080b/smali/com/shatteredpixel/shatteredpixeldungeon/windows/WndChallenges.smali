.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndChallenges.java"


# instance fields
.field public boxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field public editable:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->editable:Z

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "title"

    .line 3
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const v2, 0xffff44

    .line 4
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 5
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v3, 0x42f00000    # 120.0f

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    .line 6
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v5, 0x41900000    # 18.0f

    sub-float v4, v5, v4

    div-float/2addr v4, v2

    .line 7
    invoke-virtual {v1, v3, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->boxes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    .line 11
    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->NAME_IDS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 12
    aget-object v3, v3, v1

    .line 13
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;-><init>(Ljava/lang/String;)V

    .line 14
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->MASKS:[I

    aget v6, v6, v1

    and-int/2addr v6, p1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 15
    iput-boolean p2, v4, Lcom/watabou/noosa/Gizmo;->active:Z

    if-lez v1, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v2, v6

    :cond_1
    const/4 v6, 0x0

    const/high16 v7, 0x42d00000    # 104.0f

    .line 16
    invoke-virtual {v4, v6, v2, v7, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 17
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges$1;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->INFO:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;Lcom/watabou/noosa/Image;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v3

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v3, v2, v7, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x78

    float-to-int p2, v2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->editable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;

    .line 4
    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->MASKS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "challenges"

    .line 6
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
