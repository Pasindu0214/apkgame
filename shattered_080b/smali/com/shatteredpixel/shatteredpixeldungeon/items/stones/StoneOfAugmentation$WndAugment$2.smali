.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "StoneOfAugmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

.field public final synthetic val$aug:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

.field public final synthetic val$toAugment:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->val$toAugment:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->val$aug:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->val$toAugment:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$2;->val$aug:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    if-eqz v0, :cond_0

    .line 3
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;->useAnimation()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;->upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
