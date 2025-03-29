.class public Lcom/watabou/glscripts/Script;
.super Lcom/watabou/glwrap/Program;
.source "Script.java"


# static fields
.field public static final all:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/glscripts/Script;",
            ">;",
            "Lcom/watabou/glscripts/Script;",
            ">;"
        }
    .end annotation
.end field

.field public static curScript:Lcom/watabou/glscripts/Script;

.field public static curScriptClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/glscripts/Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/watabou/glscripts/Script;->all:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/watabou/glscripts/Script;->curScript:Lcom/watabou/glscripts/Script;

    .line 3
    sput-object v0, Lcom/watabou/glscripts/Script;->curScriptClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/glwrap/Program;-><init>()V

    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 5

    const-class v0, Lcom/watabou/glscripts/Script;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/glscripts/Script;->all:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/glscripts/Script;

    .line 2
    sget-object v4, La/b/a/e;->g:La/b/a/o/d;

    iget v2, v2, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v4, La/b/a/m/a/j;

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_0
    throw v3

    .line 4
    :cond_1
    sget-object v1, Lcom/watabou/glscripts/Script;->all:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 5
    sput-object v3, Lcom/watabou/glscripts/Script;->curScript:Lcom/watabou/glscripts/Script;

    .line 6
    sput-object v3, Lcom/watabou/glscripts/Script;->curScriptClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized use(Ljava/lang/Class;)Lcom/watabou/glscripts/Script;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/watabou/glscripts/Script;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/watabou/glscripts/Script;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/glscripts/Script;->curScriptClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_3

    .line 2
    sget-object v1, Lcom/watabou/glscripts/Script;->all:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/glscripts/Script;

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/glscripts/Script;

    .line 4
    sget-object v2, Lcom/watabou/glscripts/Script;->all:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v2, Lcom/watabou/glscripts/Script;->curScript:Lcom/watabou/glscripts/Script;

    if-eqz v2, :cond_2

    .line 6
    sget-object v2, Lcom/watabou/glscripts/Script;->curScript:Lcom/watabou/glscripts/Script;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 7
    throw p0

    .line 8
    :cond_2
    :goto_0
    sput-object v1, Lcom/watabou/glscripts/Script;->curScript:Lcom/watabou/glscripts/Script;

    .line 9
    sput-object p0, Lcom/watabou/glscripts/Script;->curScriptClass:Ljava/lang/Class;

    .line 10
    invoke-virtual {v1}, Lcom/watabou/glwrap/Program;->use()V

    .line 11
    :cond_3
    sget-object p0, Lcom/watabou/glscripts/Script;->curScript:Lcom/watabou/glscripts/Script;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
