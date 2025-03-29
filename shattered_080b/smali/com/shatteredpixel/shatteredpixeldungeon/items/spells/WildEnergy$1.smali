.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;
.super Ljava/lang/Object;
.source "WildEnergy.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;->affectTarget(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;

.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->charge(F)I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Recharging;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArtifactRecharge;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArtifactRecharge;

    .line 7
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArtifactRecharge;->left:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArtifactRecharge;->left:I

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy;

    .line 9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 10
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 13
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
