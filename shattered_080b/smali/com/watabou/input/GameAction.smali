.class public Lcom/watabou/input/GameAction;
.super Ljava/lang/Object;
.source "GameAction.java"


# static fields
.field public static final ALL_ACTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACK:Lcom/watabou/input/GameAction;

.field public static final NONE:Lcom/watabou/input/GameAction;


# instance fields
.field public code:I

.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/watabou/input/GameAction;->ALL_ACTIONS:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Lcom/watabou/input/GameAction;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lcom/watabou/input/GameAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/watabou/input/GameAction;->NONE:Lcom/watabou/input/GameAction;

    .line 3
    new-instance v0, Lcom/watabou/input/GameAction;

    const-string v1, "back"

    invoke-direct {v0, v1}, Lcom/watabou/input/GameAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/watabou/input/GameAction;->BACK:Lcom/watabou/input/GameAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/watabou/input/GameAction;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/watabou/input/GameAction;->code:I

    .line 3
    iput-object p1, p0, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/watabou/input/GameAction;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static allActions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/watabou/input/GameAction;->ALL_ACTIONS:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/watabou/input/GameAction;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/watabou/input/GameAction;

    iget p1, p1, Lcom/watabou/input/GameAction;->code:I

    iget v0, p0, Lcom/watabou/input/GameAction;->code:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
