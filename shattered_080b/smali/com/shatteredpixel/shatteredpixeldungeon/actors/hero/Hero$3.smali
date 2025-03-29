.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "Hero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public final synthetic val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$3;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SnipersMark;->object:I

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    const/4 v0, 0x1

    return v0
.end method
