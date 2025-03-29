.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndWandmaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public final synthetic val$wandmaker:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;->val$wandmaker:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;->val$wandmaker:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker$2;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->wand2:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-static {v0, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V

    return-void
.end method
