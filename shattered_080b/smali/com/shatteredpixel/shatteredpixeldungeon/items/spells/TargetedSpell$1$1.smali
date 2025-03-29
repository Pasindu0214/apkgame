.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;
.super Ljava/lang/Object;
.source "TargetedSpell.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$curSpell:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

.field public final synthetic val$shot:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1;Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;->val$curSpell:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;->val$shot:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;->val$curSpell:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;->val$shot:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->access$500()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;->affectTarget(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell$1$1;->val$curSpell:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
