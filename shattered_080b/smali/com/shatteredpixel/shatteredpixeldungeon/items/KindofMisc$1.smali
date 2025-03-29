.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "KindofMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public final synthetic val$m1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

.field public final synthetic val$m2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$m1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    iput-object p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$m2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    iput-object p7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$m1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$m2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-string v1, "EQUIP"

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    return-void
.end method
