.class public Lcom/watabou/noosa/RenderedText;
.super Lcom/watabou/noosa/Image;
.source "RenderedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/RenderedText$TextRenderBatch;
    }
.end annotation


# static fields
.field public static textRenderer:Lcom/watabou/noosa/RenderedText$TextRenderBatch;


# instance fields
.field public font:La/b/a/o/m/b;

.field public renderedHeight:F

.field public size:I

.field public text:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/noosa/RenderedText$TextRenderBatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/watabou/noosa/RenderedText$TextRenderBatch;-><init>(Lcom/watabou/noosa/RenderedText$1;)V

    sput-object v0, Lcom/watabou/noosa/RenderedText;->textRenderer:Lcom/watabou/noosa/RenderedText$TextRenderBatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/watabou/noosa/RenderedText;->renderedHeight:F

    .line 4
    iput-object v0, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/watabou/noosa/RenderedText;->renderedHeight:F

    .line 8
    iput-object p1, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/watabou/noosa/RenderedText;->size:I

    .line 10
    invoke-virtual {p0}, Lcom/watabou/noosa/RenderedText;->measure()V

    return-void
.end method


# virtual methods
.method public declared-synchronized draw()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/RenderedText;->updateMatrix()V

    .line 3
    sput-object p0, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->textBeingRendered:Lcom/watabou/noosa/RenderedText;

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    sget-object v1, Lcom/watabou/noosa/RenderedText;->textRenderer:Lcom/watabou/noosa/RenderedText$TextRenderBatch;

    iget-object v2, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, La/b/a/o/m/b;->a(La/b/a/o/m/a;Ljava/lang/CharSequence;FF)La/b/a/o/m/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized measure()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHPD Actor Thread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    sget-object v2, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    iget v3, p0, Lcom/watabou/noosa/RenderedText;->size:I

    iget-object v4, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/watabou/utils/PlatformSupport;->getFont(ILjava/lang/String;)La/b/a/o/m/b;

    move-result-object v2

    iput-object v2, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    if-eqz v2, :cond_5

    .line 5
    new-instance v3, La/b/a/o/m/d;

    iget-object v4, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, La/b/a/o/m/d;-><init>(La/b/a/o/m/b;Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-char v5, v2, v1

    .line 7
    iget-object v6, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    .line 8
    iget-object v6, v6, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    .line 9
    invoke-virtual {v6, v5}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 10
    iget v6, v6, La/b/a/o/m/b$b;->a:I

    if-eq v6, v5, :cond_2

    .line 11
    :cond_1
    new-instance v6, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    invoke-virtual {v8}, La/b/a/o/m/b;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " could not render "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/watabou/noosa/RenderedText;->font:La/b/a/o/m/b;

    .line 13
    iget-object v1, v1, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    .line 14
    iget-object v2, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget v1, v0, La/b/a/o/m/b$b;->l:I

    int-to-float v1, v1

    iget v2, v0, La/b/a/o/m/b$b;->d:I

    int-to-float v2, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v2, v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 16
    iget v1, v3, La/b/a/o/m/d;->b:F

    iget v2, v0, La/b/a/o/m/b$b;->d:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, La/b/a/o/m/b$b;->l:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->width:F

    goto :goto_1

    .line 17
    :cond_4
    iget v0, v3, La/b/a/o/m/d;->b:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 18
    :goto_1
    iget v0, p0, Lcom/watabou/noosa/RenderedText;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 19
    iget v0, v3, La/b/a/o/m/d;->c:F

    iput v0, p0, Lcom/watabou/noosa/RenderedText;->renderedHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_2
    :try_start_1
    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/watabou/noosa/RenderedText;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/watabou/noosa/Visual;->height:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 23
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Text measured from the actor thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public updateMatrix()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->updateMatrix()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/RenderedText;->renderedHeight:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->height:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    const/4 v3, 0x0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v3, v0}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    :cond_0
    return-void
.end method
