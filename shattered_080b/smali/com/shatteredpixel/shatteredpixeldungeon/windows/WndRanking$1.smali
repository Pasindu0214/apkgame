.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;
.super Ljava/lang/Thread;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

.field public final synthetic val$rec:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;->val$rec:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;->val$rec:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->loadGameData(Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "error"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;->error:Ljava/lang/String;

    :goto_0
    return-void
.end method
