.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public final synthetic val$cell:I

.field public final synthetic val$delay:F

.field public final synthetic val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;IF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$cell:I

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$delay:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$cell:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;->val$delay:F

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
