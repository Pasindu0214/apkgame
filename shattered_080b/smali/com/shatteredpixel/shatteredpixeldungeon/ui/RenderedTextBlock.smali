.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;
.super Lcom/watabou/noosa/ui/Component;
.source "RenderedTextBlock.java"


# static fields
.field public static final NEWLINE:Lcom/watabou/noosa/RenderedText;

.field public static final SPACE:Lcom/watabou/noosa/RenderedText;


# instance fields
.field public color:I

.field public highlightingEnabled:Z

.field public hightlightColor:I

.field public maxWidth:I

.field public multiline:Z

.field public nLines:I

.field public size:I

.field public text:Ljava/lang/String;

.field public tokens:[Ljava/lang/String;

.field public words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/noosa/RenderedText;",
            ">;"
        }
    .end annotation
.end field

.field public zoom:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/noosa/RenderedText;

    invoke-direct {v0}, Lcom/watabou/noosa/RenderedText;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->SPACE:Lcom/watabou/noosa/RenderedText;

    .line 2
    new-instance v0, Lcom/watabou/noosa/RenderedText;

    invoke-direct {v0}, Lcom/watabou/noosa/RenderedText;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->NEWLINE:Lcom/watabou/noosa/RenderedText;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->tokens:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->color:I

    const v0, 0xffff44

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hightlightColor:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->highlightingEnabled:Z

    .line 9
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->tokens:[Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->color:I

    const v0, 0xffff44

    .line 16
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hightlightColor:I

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->highlightingEnabled:Z

    .line 18
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->size:I

    .line 19
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized alpha(F)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/RenderedText;

    if-eqz v1, :cond_0

    .line 2
    iput p1, v1, Lcom/watabou/noosa/Visual;->am:F

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lcom/watabou/noosa/Visual;->aa:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized build()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->tokens:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/watabou/noosa/Group;->clear()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->tokens:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, v0, v2

    const-string v5, "_"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->highlightingEnabled:Z

    if-eqz v5, :cond_1

    xor-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->NEWLINE:Lcom/watabou/noosa/RenderedText;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v5, " "

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->SPACE:Lcom/watabou/noosa/RenderedText;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_3
    new-instance v5, Lcom/watabou/noosa/RenderedText;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->size:I

    invoke-direct {v5, v4, v6}, Lcom/watabou/noosa/RenderedText;-><init>(Ljava/lang/String;I)V

    if-eqz v3, :cond_4

    .line 11
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hightlightColor:I

    invoke-virtual {v5, v4}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto :goto_1

    .line 12
    :cond_4
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->color:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->color:I

    invoke-virtual {v5, v4}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 13
    :cond_5
    :goto_1
    iget-object v4, v5, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->zoom:F

    .line 14
    iput v6, v4, Lcom/watabou/utils/PointF;->x:F

    .line 15
    iput v6, v4, Lcom/watabou/utils/PointF;->y:F

    .line 16
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    iput v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->layout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized hardlight(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->color:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/RenderedText;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/watabou/noosa/Visual;->hardlight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized invert()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/RenderedText;

    if-eqz v1, :cond_0

    const v2, 0x3f451eb8    # 0.77f

    .line 3
    iput v2, v1, Lcom/watabou/noosa/Visual;->ra:F

    const v2, 0x3f3ae148    # 0.73f

    .line 4
    iput v2, v1, Lcom/watabou/noosa/Visual;->ga:F

    const v2, 0x3f1eb852    # 0.62f

    .line 5
    iput v2, v1, Lcom/watabou/noosa/Visual;->ba:F

    const v2, -0x40bae148    # -0.77f

    .line 6
    iput v2, v1, Lcom/watabou/noosa/Visual;->rm:F

    const v2, -0x40c51eb8    # -0.73f

    .line 7
    iput v2, v1, Lcom/watabou/noosa/Visual;->gm:F

    const v2, -0x40e147ae    # -0.62f

    .line 8
    iput v2, v1, Lcom/watabou/noosa/Visual;->bm:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized layout()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/4 v2, 0x1

    .line 3
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    const/4 v3, 0x0

    .line 4
    iput v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/watabou/noosa/RenderedText;

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->SPACE:Lcom/watabou/noosa/RenderedText;

    if-ne v5, v6, :cond_0

    const/high16 v5, 0x3fc00000    # 1.5f

    add-float/2addr v0, v5

    goto :goto_0

    .line 7
    :cond_0
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->NEWLINE:Lcom/watabou/noosa/RenderedText;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    add-float/2addr v7, v3

    add-float/2addr v7, v1

    .line 8
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 9
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    move v1, v7

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    .line 11
    :cond_2
    iget v6, p0, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float v6, v0, v6

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v8

    add-float/2addr v6, v8

    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    add-float/2addr v7, v3

    add-float/2addr v1, v7

    .line 12
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 13
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    .line 14
    :cond_3
    iput v0, v5, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    iput v1, v5, Lcom/watabou/noosa/Visual;->y:F

    .line 16
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 17
    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    add-float/2addr v0, v5

    .line 18
    iget v5, p0, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/watabou/noosa/ui/Component;->width:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float v5, v0, v5

    iput v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    :cond_4
    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v0, v5

    goto :goto_0

    .line 19
    :cond_5
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v1, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->height:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public maxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized resetColor()V
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->color:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/RenderedText;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->resetColor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized setHightlighting(Z)V
    .locals 1

    monitor-enter p0

    const v0, 0xffff44

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHightlighting(ZI)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->highlightingEnabled:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hightlightColor:I

    if-eq p2, v0, :cond_1

    .line 4
    :cond_0
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hightlightColor:I

    .line 5
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->highlightingEnabled:Z

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->build()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public text(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    sget-object v0, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->koreanAndroid6OTF:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->getGeneratorForString(Ljava/lang/String;)La/b/a/o/m/i/a;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->KRFontGenerator:La/b/a/o/m/i/a;

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->android6KRSplitter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->regularsplitterMultiline:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->regularsplitter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->tokens:[Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->build()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public text(Ljava/lang/String;I)V
    .locals 0

    .line 11
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth:I

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->multiline:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized zoom(F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->zoom:F

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->words:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/RenderedText;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 4
    iput p1, v1, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput p1, v1, Lcom/watabou/utils/PointF;->y:F

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
