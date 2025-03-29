.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;
.super Lcom/watabou/noosa/ui/Component;
.source "ChangeInfo.java"


# instance fields
.field public buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;",
            ">;"
        }
    .end annotation
.end field

.field public line:Lcom/watabou/noosa/ColorBlock;

.field public major:Z

.field public text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    const/4 v0, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/16 v2, 0x9

    .line 3
    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 4
    new-instance p1, Lcom/watabou/noosa/ColorBlock;

    const v2, -0xddddde

    invoke-direct {p1, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 7
    new-instance p1, Lcom/watabou/noosa/ColorBlock;

    const v2, -0xcccccd

    invoke-direct {p1, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    .line 8
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    :goto_0
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->major:Z

    .line 10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    if-eqz p3, :cond_1

    const-string p1, ""

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-static {p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 13
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_1
    return-void
.end method


# virtual methods
.method public layout()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    .line 2
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->major:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    add-float/2addr v0, v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 4
    iget v5, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    .line 5
    invoke-virtual {v1, v4, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->title:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 8
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-eqz v0, :cond_1

    .line 10
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v3, v3

    .line 11
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    invoke-virtual {v0, v3, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 14
    iget v0, v0, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v1, v0

    .line 15
    :cond_1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 16
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    .line 17
    iget v7, v6, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v7, v0

    .line 18
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3

    .line 19
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    add-float/2addr v1, v5

    const/4 v5, 0x0

    .line 20
    :cond_3
    iget v7, p0, Lcom/watabou/noosa/ui/Component;->x:F

    cmpl-float v7, v0, v7

    if-nez v7, :cond_6

    .line 21
    iget v7, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 22
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeButton;

    .line 23
    iget v9, v9, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v7, v9

    cmpg-float v10, v7, v4

    if-gtz v10, :cond_4

    add-float/2addr v7, v9

    :cond_5
    div-float/2addr v7, v2

    add-float/2addr v0, v7

    .line 24
    :cond_6
    invoke-virtual {v6, v0, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 25
    iget v7, v6, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v0, v7

    .line 26
    iget v6, v6, Lcom/watabou/noosa/ui/Component;->height:F

    cmpg-float v7, v5, v6

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_7
    add-float/2addr v5, v2

    add-float/2addr v5, v1

    .line 27
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 28
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->major:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    .line 29
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    .line 30
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 31
    invoke-virtual {v0, v3, v1}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 32
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 33
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    goto :goto_1

    .line 34
    :cond_8
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    invoke-virtual {v0, v1, v5}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 36
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 37
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    goto :goto_1

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    invoke-virtual {v0, v1, v5}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 39
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangeInfo;->line:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 40
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    :goto_1
    return-void
.end method
