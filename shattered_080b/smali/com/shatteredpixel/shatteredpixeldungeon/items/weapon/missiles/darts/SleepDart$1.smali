.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;
.source "SleepDart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$defender:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart$1;->val$defender:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;-><init>()V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart$1;->val$defender:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Sleep;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x1

    return v0
.end method
