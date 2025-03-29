.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "MagesStaff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$1;->applyWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V

    :cond_0
    return-void
.end method
