.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;
.super Ljava/lang/Object;
.source "HuntressArmor.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->doSpecial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    .line 3
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->targets:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->targets:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    .line 9
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->targets:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 12
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->attackDelay()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    :cond_0
    return-void
.end method
