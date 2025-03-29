.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;
.super Lcom/watabou/noosa/ui/Component;
.source "GameLog.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/watabou/noosa/ui/Component;",
        "Lcom/watabou/utils/Signal$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static textsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lastColor:I

.field public lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ".*[.,;?! ]$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->textsToAdd:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->update:Lcom/watabou/utils/Signal;

    invoke-virtual {v0, p0}, Lcom/watabou/utils/Signal;->replace(Lcom/watabou/utils/Signal$Listener;)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->recreateLines()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->update:Lcom/watabou/utils/Signal;

    invoke-virtual {v0, p0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 4
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 5
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 6
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float v4, v0, v4

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized newLine()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onSignal(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->onSignal(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized onSignal(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->textsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized recreateLines()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;

    .line 2
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;->text:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;->color:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastColor:I

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
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

.method public declared-synchronized update()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->textsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget v2, p0, Lcom/watabou/noosa/Group;->length:I

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Group;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->recreateLines()V

    :cond_1
    const-string v2, "\n"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    goto :goto_0

    :cond_2
    const v2, 0xffffff

    const-string v4, "++ "

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0xff00

    goto :goto_1

    :cond_3
    const-string v4, "-- "

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0xff0000

    goto :goto_1

    :cond_4
    const-string v4, "** "

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0xff8800

    goto :goto_1

    :cond_5
    const-string v4, "@@ "

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff00

    .line 15
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastColor:I

    if-ne v2, v4, :cond_8

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    if-ge v4, v5, :cond_8

    .line 16
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 17
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    .line 18
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 20
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text:Ljava/lang/String;

    .line 21
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;->text:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v4, 0x6

    .line 22
    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v4

    iput-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 23
    invoke-virtual {v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    .line 24
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 25
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastColor:I

    .line 26
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;

    invoke-direct {v7, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_3
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    if-lez v1, :cond_0

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    :goto_4
    iget v4, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_a

    .line 30
    iget-object v4, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->nLines:I

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    if-le v2, v5, :cond_b

    .line 31
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 32
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    invoke-virtual {v1}, Lcom/watabou/noosa/Group;->destroy()V

    .line 34
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_b
    if-gt v2, v5, :cond_9

    .line 35
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->lastEntry:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    goto/16 :goto_0

    .line 37
    :cond_c
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->textsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 38
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->layout()V

    .line 39
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;->textsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    :cond_d
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
