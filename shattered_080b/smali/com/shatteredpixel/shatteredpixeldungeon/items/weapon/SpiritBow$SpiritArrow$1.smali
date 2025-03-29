.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;
.super Ljava/lang/Object;
.source "SpiritBow.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

.field public final synthetic val$cell:I

.field public final synthetic val$dst:I

.field public final synthetic val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$last:Z

.field public final synthetic val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;IZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$cell:I

    iput-boolean p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$last:Z

    iput p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$dst:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$cell:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->onThrow(I)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$last:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    .line 7
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    const/4 v1, -0x1

    .line 10
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->flurryCount:I

    :cond_1
    return-void
.end method
