.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;
.super Ljava/lang/Object;
.source "Combo.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

.field public final synthetic val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->count:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->FURY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 4
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CRUSH:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 6
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->SLAM:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 8
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CLEAVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 10
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CLOBBER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 12
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2$1;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;->access$200(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$2;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method
