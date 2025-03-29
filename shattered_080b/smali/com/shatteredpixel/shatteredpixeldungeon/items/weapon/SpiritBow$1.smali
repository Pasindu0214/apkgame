.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$1;
.super Ljava/lang/Object;
.source "SpiritBow.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    invoke-direct {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
