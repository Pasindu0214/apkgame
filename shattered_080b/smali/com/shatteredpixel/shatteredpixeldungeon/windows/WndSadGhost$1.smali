.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndSadGhost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;

.field public final synthetic val$ghost:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;->val$ghost:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost$1;->val$ghost:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method
